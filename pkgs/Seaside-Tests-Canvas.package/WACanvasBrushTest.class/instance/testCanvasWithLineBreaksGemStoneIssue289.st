tests-encoding
testCanvasWithLineBreaksGemStoneIssue289
	"http://code.google.com/p/glassdb/issues/detail?id=289"

	|  testBlock |
	testBlock := [:breakString | | stream |
		stream := WriteStream on: String new.
		stream 
			nextPut: $a;
			nextPutAll: breakString;
			nextPut: $b;
			nextPutAll: breakString;
			nextPut: $c;
			yourself.
		self
			assert: [ :html | html withLineBreaks: stream contents ] gives: 'a<br/>b<br/>c'].
	testBlock value: String cr.
	testBlock value: String crlf.
	testBlock value: String lf.
