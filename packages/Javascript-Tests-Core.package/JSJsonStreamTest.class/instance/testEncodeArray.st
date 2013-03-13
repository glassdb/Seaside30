tests-encoding
testEncodeArray
	| actual |
	actual := String streamContents: [ :stream |
		JSJsonStream 
			encodeCollection: (Array 
				with: 'something'
				with: (GRSmallDictionary new
					at: 'a' put: '1';
					yourself))
			on: stream ].
	self assert: actual = '["something",{"a":"1"}]'