responding
pvtWriteStatusOn: aStream
	aStream
		nextPutAll: self httpVersion;
		nextPut: $ ;
		nextPutAll: self statusCodeAndReason;
		nextPutAll: String crlf