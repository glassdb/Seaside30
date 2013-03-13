tests-encoding
testEncodeDictionary
	| actual |
	actual := String streamContents: [ :stream |
		JSJsonStream 
			encodeDictionary: (GRSmallDictionary new
				at: '1' put: 'a';
				at: '2' put: (GRSmallDictionary new
					at: '3' put: 'c';
					yourself);
				yourself) 
			on: stream ].
	self assert: actual = '{"1":"a","2":{"3":"c"}}'