actions
push: aRequestHandler while: aBlock
	self greaseDeprecatedApi: 'WARequestContext>>#push:while:' details: 'Use #push:during:.'.
	^ self push: aRequestHandler during: aBlock
