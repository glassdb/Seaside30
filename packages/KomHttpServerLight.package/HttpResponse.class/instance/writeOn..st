responding
writeOn: aStream
	self writeHeadersOn: aStream.
	self pvtWriteContentsOn: aStream.
