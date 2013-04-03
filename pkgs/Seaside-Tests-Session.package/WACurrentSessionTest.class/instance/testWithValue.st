tests
testWithValue
	| session context |
	session := WASession new.
	context := WARequestContext request: nil response: nil.
	context
		push: session
		during: [ self assert: WACurrentSession value = session ]