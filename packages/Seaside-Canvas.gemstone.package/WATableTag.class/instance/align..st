deprecated
align: aString 
	self 
		greaseDeprecatedApi: 'WATableTag>>#align:'
		details: 'Use a CSS stylesheet.'.
	self attributes 
		at: 'align'
		put: aString