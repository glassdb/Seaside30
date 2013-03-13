tests
testFrameCount
	| walkback |
	[ WATestError signal: 'foo' ]
		on: WATestError
		do: [ :e | walkback := WAWalkback current exception: e ].
	self assert: walkback frameCount > 0