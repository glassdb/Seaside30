private
createRequestContextWithFieldKey: fieldString cookieKey: cookieString
	| fields cookies request |
	fields := WARequestFields new.
	fieldString isNil ifFalse: [ fields at: self fieldName put: fieldString ].
	cookies := OrderedCollection new.
	cookieString isNil ifFalse: [ cookies add: ((WARequestCookie key: self cookieKey value: cookieString ) path: self path; yourself) ].
	request := (WARequest method: 'GET' uri: self path)
		setPostFields: fields;
		setCookies: cookies;
		yourself.
	^ WARequestContext request: request response: WABufferedResponse new