deprecated
mailto: aString 
	self 
		greaseDeprecatedApi: 'WAAnchorTag>>#mailto:'
		details: 'Use WAAnchorTag>>#url: passing in a "mailto:" URL.'.
	self
		url: 'mailto:' , aString;
		with: aString