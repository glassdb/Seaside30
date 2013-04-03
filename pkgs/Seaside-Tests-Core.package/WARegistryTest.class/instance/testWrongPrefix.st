tests
testWrongPrefix
	| cookie1 cookie2 actual request context |
	cookie1 := WARequestCookie key: handler keyCookieName value: '1234'.
	cookie2 := (WARequestCookie key: handler keyCookieName value: '1234')
		path: '/one';
		yourself.

	request := (WARequest method: 'GET' uri: '/oneo')
		setCookies: (Array
			with: cookie1
			with: cookie2);
		yourself.
	context := self requestContextFor: request.
	actual := handler cookieFromContext: context ifAbsent: [ nil ].
	self assert: actual == cookie1