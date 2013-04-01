accessing
contentType
	| i contentType |
	^self propertyAt: #contentType ifAbsentPut: [
		contentType := self header at: 'content-type' ifAbsent: [self defaultContentType].
		contentType ifNotNil: [i := contentType indexOf: $;. "get rid of charset field"
			i > 0 ifTrue: [contentType := contentType copyFrom: 1 to: i-1]].
		contentType asLowercase]