*seaside-flow
respond: aBlock 
	self 
		greaseDeprecatedApi: 'WASession>>#respond:'
		details: 'Use WARequestContext>>#respondAndContinue: (requires the Seaside-Flow package).'.
	^ self requestContext respondAndContinue: aBlock