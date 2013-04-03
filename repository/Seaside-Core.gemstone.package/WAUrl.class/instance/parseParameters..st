deprecated
parseParameters: aString
	"This was probably only used internally anyway, but what the heck."
	
	self greaseDeprecatedApi: 'WAUrl>>#parseParameters:'
		details: 'Use WAUrl>>#parseQuery:.'.
		
	^ self parseQuery: aString