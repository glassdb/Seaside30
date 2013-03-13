tests-custom
testCustomArray
	printer := [ :stream | stream json: #('aString1' ('aString2' 'aString3')) ].
	self assert: self equals: '["aString1",["aString2","aString3"]]'