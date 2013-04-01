accessing
serviceNamed: aString

	^self 
		serviceNamed: aString
		ifAbsent: [self error: 'No service by that name']