tests
testWrongKey
	| cookie request context actual |
	cookie := WARequestCookie key: (handler keyCookieName, '-not') value: '1234'.
	request := (WARequest method: 'GET' uri: '/')
		setCookies: (Array with: cookie);
		yourself.
	context := self requestContextFor: request.
	actual := handler cookieFromContext: context ifAbsent: [ nil ].
	self assert: actual isNil