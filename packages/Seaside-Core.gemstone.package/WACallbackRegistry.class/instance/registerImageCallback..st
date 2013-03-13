deprecated
registerImageCallback: aBlock 
	self 
		greaseDeprecatedApi: 'WACallbackRegistry>>#registerImageCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (WAImageCallback on: aBlock)