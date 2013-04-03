*seaside-tools-core
register: aString 
	self 
		greaseDeprecatedApi: 'WARequestHandler class>>#register:'
		details: 'Use WAAdmin class>>#register:at:.'.
	^ WAAdmin 
		register: self
		at: aString