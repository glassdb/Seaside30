responding
writeHeadersOn: aStream

	| tmp |
	"Header"

	tmp := WriteStream on: ''.
	self pvtWriteStatusOn: tmp.
	self pvtWriteFieldsOn: tmp.
	self pvtWriteCookiesOn: tmp.
	self pvtWriteContentTypeOn: tmp.
	self pvtWriteContentLengthOn: tmp.
	tmp nextPutAll: String crlf.
	aStream nextPutAll: tmp contents; flush.

