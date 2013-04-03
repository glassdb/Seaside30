deprecated
at: aKey append: aValue
	self greaseDeprecatedApi: 'WARequestFields>>#at:append:'
		details:  'Use WARequestFields>>#at:add:.'.
	
	^ self at: aKey add: aValue