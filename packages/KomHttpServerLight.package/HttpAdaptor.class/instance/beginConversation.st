processing
beginConversation

	| response request count limit continue |
	"note: there is a lot of effort in this method to ensure that we don't have
	and explicit method returns.  For some reason (bugs in exception handling?) we
	can get errors if we have explicit returns...this behavior seems to
	only happen when Seaside is also loaded (though it doesn't look like Seaside code
	is being invoked when the problems happen."

	count := 0.
	continue := true.
	limit := self maxKeepAliveRequests.
	[[
		[request := self readRequest] on: Error do: [ :ex | continue := false].
		continue ifTrue: [
			response := self dispatchRequest: request.
			response isCommitted ifFalse: [
				self addConnectionHeaders: response request: request count: count.
				(self writeResponse: response for: request) ifFalse: [^self].
				count := count + 1.
				continue := response isPersistent and: [count < limit] ]
			ifTrue: [ continue := false ] ].
		continue.
	] whileTrue]
		ensure: [self destroy]