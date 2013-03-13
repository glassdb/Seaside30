tests
testOneOfManySlashInCookie
	| cookie1 cookie2 cookie3 cookie4 actual request context |
	cookie1 := WARequestCookie key: handler keyCookieName value: '1234'.
	cookie2 := (WARequestCookie key: handler keyCookieName value: '1234')
		path: '/';
		yourself.
	cookie3 := (WARequestCookie key: handler keyCookieName value: '1234')
		path: '/1/2/';
		yourself.
	cookie4 := (WARequestCookie key: handler keyCookieName value: '1234')
		path: '/1/2/3/';
		yourself.
	request := (WARequest method: 'GET' uri: '/1/2')
		setCookies: (Array
			with: cookie1
			with: cookie2
			with: cookie3
			with: cookie4);
		yourself.
	context := self requestContextFor: request.
	actual := handler cookieFromContext: context ifAbsent: [ nil ].
	self assert: actual == cookie3