deprecated
withParameter: aKey
	self greaseDeprecatedApi: 'WAUrl>>#withParameter:'
		details: 'Use WAUrl>>#withField:.'.
	
	^ self withField: aKey