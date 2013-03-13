*seaside-tools-core
register: aString in: aDispatcher 
	self 
		greaseDeprecatedApi: 'WARequestHandler class>>#register:in:'
		details: 'Use WAAdmin class>>#register:at:in:.'.
	^ WAAdmin 
		register: self
		at: aString
		in: aDispatcher