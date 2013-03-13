deprecated
registerRequestHandler: aRequestHandler 
	self 
		greaseDeprecatedApi: 'WARegistry>>#registerRequestHandler:'
		details: 'Use register:.'.
	^ self register: aRequestHandler