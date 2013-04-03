tests-custom
testCustomDictionary
	printer := [ :stream | 
		stream json: (GRSmallDictionary new
			at: 'foo' put: 'bar';
			at: 'zork' put: (GRSmallDictionary new
				at: 'foo' put: 'bar';
				yourself);
			yourself) ].
	self assert: self equals: '{"foo":"bar","zork":{"foo":"bar"}}'