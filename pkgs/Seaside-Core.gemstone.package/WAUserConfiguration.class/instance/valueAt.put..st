deprecated
valueAt: aSymbol put: anObject 
	self 
		greaseDeprecatedApi: 'WAUserConfiguration>>#valueAt:put:'
		details: 'Use #at:put:.'.
	^ self 
		at: aSymbol
		put: anObject