testing
hasCookieInContext: aRequestContext withValue: aString 
	| cookie |
	cookie := self cookieFromContext: aRequestContext ifAbsent: [ ^ false ].
	^ cookie value = aString