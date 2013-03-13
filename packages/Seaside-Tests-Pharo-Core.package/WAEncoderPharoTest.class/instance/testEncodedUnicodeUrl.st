tests
testEncodedUnicodeUrl
	"this makes sure the encoder doesn't fall on the nose with unicode"
	| hiraA hiraO hiraAO ea |
	ea := String 
		with: (Character codePoint: 233)
		with: (Character codePoint: 228).
	self 
		assert: ea
		encoder: WAUrlEncoder
		gives: '%C3%A9%C3%A4'.
	hiraA := (Character codePoint: 12354) greaseString.	"HIRAGANA LETTER A"
	hiraO := (Character codePoint: 12362) greaseString.	"HIRAGANA LETTER O"
	hiraAO := hiraA , hiraO.
	self 
		assert: hiraA
		encoder: WAUrlEncoder
		gives: '%E3%81%82'.
	self 
		assert: hiraO
		encoder: WAUrlEncoder
		gives: '%E3%81%8A'.
	self 
		assert: hiraAO
		encoder: WAUrlEncoder
		gives: '%E3%81%82' , '%E3%81%8A'