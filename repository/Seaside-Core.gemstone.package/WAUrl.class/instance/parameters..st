deprecated
parameters: aDictionary
	self greaseDeprecatedApi: 'WAUrl>>#parameters:'
		details: 'Use WAUrl>>#queryFields:.'.

	^ self queryFields: aDictionary