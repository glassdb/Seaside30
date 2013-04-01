initialize-release
readRequestHeaderFrom: aStream
	| reqHeader |
	reqHeader := ReadStream on: 
		(aStream upToAll: self endOfRequestHeaderMarker).
	self initStatusString: (self readStatusStringFrom: reqHeader).
	self header: (self class parseHttpHeader: reqHeader upToEnd).
	self rawPostFields. "force reading/parsing post fields"