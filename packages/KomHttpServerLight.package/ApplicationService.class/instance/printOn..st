printing
printOn: aStream
	aStream nextPutAll: self name.
	self isRunning ifTrue: [aStream nextPutAll: ' [running]'].
	self isStopping ifTrue: [aStream nextPutAll: ' [stopping]'].
	self isStopped ifTrue: [aStream nextPutAll: ' [stopped]']