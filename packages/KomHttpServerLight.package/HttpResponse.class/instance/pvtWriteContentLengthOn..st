responding
pvtWriteContentLengthOn: aStream

	self contentLength ifNotNilDo:
		[ :length |
		aStream
			nextPutAll: 'Content-length: ';
			nextPutAll: length asString;
			nextPutAll: String crlf]