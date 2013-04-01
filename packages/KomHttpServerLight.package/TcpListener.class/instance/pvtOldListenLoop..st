private
pvtOldListenLoop: aBlock
	"see comment on ConnectionQueue>>oldStyleListenLoop"
	| socket |
	socket := nil.
	aBlock whileTrue:
		[socket ifNil:
			["try to create a new socket for listening"
			socket := Socket createIfFail: [nil]].
		socket 
			ifNil: [Process terminationOkDuring: [(Delay forMilliseconds: 100) wait]]
			ifNotNil:
				[socket isUnconnected ifTrue: 
					[self bind: socket withBacklogSize: self backlogSize.
					self socketsToDestroy add: socket].
				Process terminationOkDuring: 
					[[socket waitForConnectionUntil: (Socket deadlineSecs: 10)]
						ensure: [socket destroy]].
				socket isConnected
					ifTrue: 
						["connection established"
						handler value: socket.
						socket := nil]
					ifFalse:
						[socket isWaitingForConnection
							ifFalse: [socket destroy. socket := nil]]]]