*seaside-tools-core
registerAsApplication: aString 
	self 
		greaseDeprecatedApi: 'WAComponent class>>#registerAsApplication:'
		details: 'Use WAAdmin class>>#register:asApplicationAt:.'.
	^ WAAdmin 
		register: self
		asApplicationAt: aString