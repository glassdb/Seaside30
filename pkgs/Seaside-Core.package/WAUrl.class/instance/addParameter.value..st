deprecated
addParameter: aKey value: aValue
	self greaseDeprecatedApi: 'WAUrl>>#addParameter:value:'
		details: 'Use WAUrl>>#addField:value:.'.
	
	^ self addField: aKey value: aValue