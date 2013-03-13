deprecated
valueAt: aSymbol 
	self 
		greaseDeprecatedApi: 'WAConfiguration>>#valueAt:'
		details: 'Use #at:.'.
	^ self at: aSymbol