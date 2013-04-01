tests
testEncodedXml
	self assert: 'Seaside' encoder: self xmlEncoderClass gives: 'Seaside'.
	self assert: '<div id="&amp;">' encoder: self xmlEncoderClass gives: '&lt;div id=&quot;&amp;amp;&quot;&gt;'