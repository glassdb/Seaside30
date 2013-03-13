deprecated
ensureKeyForHandler: aRequestHandler 
	self 
		greaseDeprecatedApi: 'WARegistry>>#ensureKeyForHandler:'
		details: 'Use #ensureKeyFor:.'.
	^ self ensureKeyFor: aRequestHandler