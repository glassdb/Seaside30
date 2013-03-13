deprecated
at: aKey append: aValue
	self greaseDeprecatedApi: 'WAHeaderFields>>#at:append:'
		details:  'Use WAHeaderFields>>#at:add:.'.
	
	^ self at: aKey add: aValue