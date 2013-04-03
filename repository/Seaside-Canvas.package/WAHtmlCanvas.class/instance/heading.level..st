deprecated
heading: anObject level: anInteger 
	self 
		greaseDeprecatedApi: 'WAHtmlCanvas>>#heading:level:'
		details: 'Use WAHeadingTag>>level: and WAHeadingTag>>with:. For example: "html heading level: 1; with: ''some text''".'.
	self heading
		level: anInteger;
		with: anObject