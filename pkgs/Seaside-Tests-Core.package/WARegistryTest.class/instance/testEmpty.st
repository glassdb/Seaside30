tests
testEmpty
	| context cookie |
	context := self requestContextFor: WARequest new.
	cookie := handler cookieFromContext: context ifAbsent: [ nil ].
	self assert: cookie isNil