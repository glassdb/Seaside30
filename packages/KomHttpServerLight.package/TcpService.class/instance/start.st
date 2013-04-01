starting and stopping
start

	self verifyOkToStart ifFalse: [^self].
	self assignPort.
	[super start] on: Error do: 
		[ :ex | self unassignPort. ex pass]
