starting and stopping
startOn: portNum

	(self portNumber ~= portNum) ifTrue: [self stop].
	self portNumber: portNum.
	self start.