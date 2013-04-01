private
pvtListenLoop: aBlock
	| socket listener |

	listener := self newListener: self backlogSize.

	"If the listener is not valid then the we cannot use the
	BSD style accept() mechanism."
	listener isValid ifFalse: [^self pvtOldListenLoop: aBlock].

	aBlock whileTrue: 
		[Process terminationOkDuring: 
			[[socket := listener waitForAcceptFor: self acceptTimeout ifTimedOut: [nil]]
				ifCurtailed: [listener destroy]].
		socket ifNotNil:
			[socket isConnected
				ifTrue: [handler value: socket]
				ifFalse: [socket destroy].
			socket := nil].
		listener isValid ifFalse: 
			[(Delay forMilliseconds: self listenerDestroyDelay) wait.
			listener destroy.
			listener := self newListener: self backlogSize]]