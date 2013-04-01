starting and stopping
waitForStop
	"Wait until the service is stopped"

	self isStopped ifTrue: [^self].
	self isStopping 
		ifFalse: [^self error: 'service is not in the process of stopping'].
	[self isStopping] whileTrue: [self addStopSignal wait]