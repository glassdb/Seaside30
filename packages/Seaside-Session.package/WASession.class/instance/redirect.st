deprecated
redirect
	self 
		greaseDeprecatedApi: 'WASession>>#redirect'
		details: 'Use WARequestContext>>#redirect (requires the Seaside-Flow package).'.
	^ self requestContext redirect