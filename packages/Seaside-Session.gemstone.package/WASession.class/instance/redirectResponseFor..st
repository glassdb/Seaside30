deprecated
redirectResponseFor: aUrlOrString 
	self 
		greaseDeprecatedApi: 'WASession>>#redirectResponseFor:'
		details: 'Use WARequestContext>>#redirectTo:.'.
	self requestContext redirectTo: aUrlOrString