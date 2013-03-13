tests
testWithoutSession
	| context |
	context := WARequestContext request: nil response: nil.
	WACurrentRequestContext
		use: context
		during: [ self assert: WACurrentSession value isNil ]