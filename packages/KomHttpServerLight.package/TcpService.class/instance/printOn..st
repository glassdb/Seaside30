printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPutAll: ' port: ';
		nextPutAll: self portNumber greaseString