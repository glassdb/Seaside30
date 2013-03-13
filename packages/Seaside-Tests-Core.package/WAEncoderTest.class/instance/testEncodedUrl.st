tests
testEncodedUrl
	self assert: 'Seaside Aubergines' encoder: WAUrlEncoder gives: 'Seaside%20Aubergines'.
	self assert: 'www.seaside.st' encoder: WAUrlEncoder gives: 'www.seaside.st'.
	self assert: '~seaside-info_' encoder: WAUrlEncoder gives: '~seaside-info_'.
	self assert: 'http://www.seaside.st?foo=1&bar=2' encoder: WAUrlEncoder gives: 'http%3A%2F%2Fwww.seaside.st%3Ffoo%3D1%26bar%3D2'.
	self assert: 'a%' encoder: WAUrlEncoder gives: 'a%25'.
	self assert: (String with: Character cr) encoder: WAUrlEncoder gives: '%0D'