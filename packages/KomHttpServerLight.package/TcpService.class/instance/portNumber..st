accessing
portNumber: aNumber

	self isRunning 
		ifTrue: 
			[self verifyPortAvailability: aNumber.
			self stop.
			portNumber := aNumber.
			self start.]
		ifFalse: 
			[portNumber := aNumber].
