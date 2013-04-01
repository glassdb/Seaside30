responding
pvtWriteContentTypeOn: aStream
	aStream
		nextPutAll: 'Content-type: ';
		nextPutAll: self contentType asString;
		nextPutAll: String crlf