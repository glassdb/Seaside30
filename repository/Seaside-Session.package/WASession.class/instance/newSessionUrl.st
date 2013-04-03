deprecated
newSessionUrl
	self 
		greaseDeprecatedApi: 'WASession>>#newSessionUrl'
		details: 'Use WAApplication>>#url.'.
	^ self application url