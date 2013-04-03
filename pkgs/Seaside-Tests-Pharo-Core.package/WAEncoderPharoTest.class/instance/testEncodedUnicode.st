tests
testEncodedUnicode
	"this makes sure the encoder doesn't fall on the nose with unicode"
	| hiraA hiraO hiraAO ea |
	ea := String 
		with: (Character codePoint: 233)
		with: (Character codePoint: 228).
	self 
		assert: ea
		encoder: WAXmlEncoder
		gives: ea.
	hiraA := (Character codePoint: 12354) greaseString.	"HIRAGANA LETTER A"
	hiraO := (Character codePoint: 12362) greaseString.	"HIRAGANA LETTER O"
	hiraAO := hiraA , hiraO.
	self 
		assert: hiraA
		encoder: WAXmlEncoder
		gives: hiraA.
	self 
		assert: hiraO
		encoder: WAXmlEncoder
		gives: hiraO.
	self 
		assert: hiraAO
		encoder: WAXmlEncoder
		gives: hiraAO