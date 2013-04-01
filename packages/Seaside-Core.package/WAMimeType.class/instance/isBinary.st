testing
isBinary
	"answers whether the contents of a document of the receiving mime type are binary"
	| subTypes |
	self main = 'text' ifTrue: [ ^ false ].
	self main = 'application' ifFalse: [ ^ true ].
	GRPlatform subStringsIn: self sub splitBy: $+ do: [ :each |
		(#('x-javascript' 'xml') includes: each)
			ifTrue: [ ^ false ] ].
	^ true