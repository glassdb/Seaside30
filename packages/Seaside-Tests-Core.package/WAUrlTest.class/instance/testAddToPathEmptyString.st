tests-adding
testAddToPathEmptyString
	url addToPath: ''.
	self assert: url path size = 0.
	self assert: url greaseString = '/'