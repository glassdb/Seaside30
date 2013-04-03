deprecated
keyOrNilForHandler: aRequestHandler 
	self 
		greaseDeprecatedApi: 'WARegistry>>#keyOrNilForHandler:'
		details: 'Use #keyFor:ifAbsent:.'.
	^ self 
		keyFor: aRequestHandler
		ifAbsent: [ nil ]