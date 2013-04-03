deprecated
entryPointAt: aString 
	self 
		greaseDeprecatedApi: 'WADispatcher>>#entryPointAt:'
		details: 'Use WADispatcher>>#handlerAt:.'.
	^ self handlerAt: aString