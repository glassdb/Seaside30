tests
testEncodedXml
	self assert: 'Seaside' encoder: WAXmlEncoder gives: 'Seaside'.
	self assert: '<div id="&amp;">' encoder: WAXmlEncoder gives: '&lt;div id=&quot;&amp;amp;&quot;&gt;'