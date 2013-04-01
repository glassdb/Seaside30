accessing
firstLineOn: strm

	strm nextPutAll: self method.
	strm nextPut: $ .
	strm nextPutAll: self rawUrl.
	strm nextPut: $ .
	strm nextPutAll: self protocol.
