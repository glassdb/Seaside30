private
verifyOkToStart
	self isRunning ifTrue: [^false].
	self isStopping 
		ifTrue: 
			[self error: 'Service is in the process of stopping'.
			^false].
	^ true