testing
hasCookieInContext: aRequestContext
	self cookieFromContext: aRequestContext ifAbsent: [ ^ false ].
	^ true