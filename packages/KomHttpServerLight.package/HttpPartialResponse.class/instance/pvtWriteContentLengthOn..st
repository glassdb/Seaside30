responding
pvtWriteContentLengthOn: aStream
	"do nothing, since the length is not known yet"
	self flag: #todo. "in HTTP/1.1, can set chunking"