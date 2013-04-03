deprecated
addParameter: aKey
	self greaseDeprecatedApi: 'WAUrl>>#addParameter:'
		details: 'Use WAUrl>>#addField:.'.
	
	^ self addField: aKey