writing-private
writePathQuoted: aBoolean on: aStream
	path isNil
		ifTrue: [ ^ self ].
	aStream nextPutAll: '; path='.
	self write: self path quoted: aBoolean on: aStream