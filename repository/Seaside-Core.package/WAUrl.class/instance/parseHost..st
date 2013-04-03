deprecated
parseHost: aString
	"This was probably only used internally anyway, but what the heck."
	
	self greaseDeprecatedApi: 'WAUrl>>#parseHost:'
		details: 'Use WAUrl>>#parseAuthority:.'.
		
	^ self parseAuthority: aString