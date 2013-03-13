private
assert: aString encoder: aClass gives: anEncodedString
	| actual |
	actual := String streamContents: [ :stream |
		(aClass on: stream codec: self requestContext codec) nextPutAll: aString ].
	self assert: actual = anEncodedString