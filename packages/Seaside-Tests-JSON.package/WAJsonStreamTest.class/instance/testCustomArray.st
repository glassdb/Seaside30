tests-custom
testCustomArray
	printer := [ :stream | stream render: #('aString1' ('aString2' 'aString3')) ].
	self assert: self equals: '["aString1", ["aString2", "aString3"]]'