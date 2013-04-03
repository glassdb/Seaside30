deprecated
redirectWithCookie: aCookie 
	self 
		greaseDeprecatedApi: 'WASession>>#redirectWithCookie:'
		details: 'Use "self requestContent response addCookie: aCookie. self requestContext redirect" (requires the Seaside-Flow package).'.
	self requestContext response addCookie: aCookie.
	self requestContext redirect