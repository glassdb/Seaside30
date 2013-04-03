deprecated
redirectWithMessage: aString delay: aDuration 
	self 
		greaseDeprecatedApi: 'WASession>>#redirectWithMessage:delay:'
		details: 'Use WARequestContext>>#redirectWithMessage:delay: (requires the Seaside-Flow package).'.
	^ self requestContext 
		redirectWithMessage: aString
		delay: aDuration