evaluating
value
	| context |
	self 
		greaseDeprecatedApi: 'WACurrentSession class>>#value'
		details: 'Use "self session" on a subclass of WAObject or "WACurrentRequestContext value session".'.
	[ context := WACurrentRequestContext value ] 
		on: WARequestContextNotFound
		do: [ :e | ^ nil ].
	^ context session