deprecated
withParameter: aKey value: aValue
	self greaseDeprecatedApi: 'WAUrl>>#withParameter:value:'
		details: 'Use WAUrl>>#withField:value:.'.
	
	^ self withField: aKey value: aValue