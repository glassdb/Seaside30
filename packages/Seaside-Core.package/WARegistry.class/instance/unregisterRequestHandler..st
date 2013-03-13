deprecated
unregisterRequestHandler: aRequestHandler 
	self 
		greaseDeprecatedApi: 'WARegistry>>#unregisterRequestHandler:'
		details: 'Use #unregister:.'.
	^ self unregister: aRequestHandler