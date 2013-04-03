tests
testOnlyOne
	| cookie1 cookie2 request context |
	cookie1 := WARequestCookie key: handler keyCookieName value: '1234'.
	request := (WARequest method: 'GET' uri: '/')
		setCookies: (Array with: cookie1);
		yourself.
	context := self requestContextFor: request.
	cookie2 := handler cookieFromContext: context ifAbsent: [ nil ].
	self assert: cookie1 == cookie2