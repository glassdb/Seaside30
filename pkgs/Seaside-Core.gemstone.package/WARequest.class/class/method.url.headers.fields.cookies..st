deprecated
method: methodString url: urlOrString headers: headDict fields: fieldDict cookies: cookieDict 
	self 
		greaseDeprecatedApi: 'WARequest class>>#method:url:headers:fields:cookies:'
		details: 'Create Requests with #method:uri:version: or #method:uri: and use accessors to set other values.'.
	^ (self 
		method: methodString
		uri: urlOrString)
		setHeaders: headDict;
		setPostFields: fieldDict;
		setCookies: cookieDict;
		yourself