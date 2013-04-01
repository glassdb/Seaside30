printing
printOn: aStream
	aStream
		nextPutAll: self class name greaseString;
		nextPutAll: ' port: ';
		nextPutAll: self portNumber greaseString