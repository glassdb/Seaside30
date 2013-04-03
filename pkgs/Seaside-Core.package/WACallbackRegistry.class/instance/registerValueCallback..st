deprecated
registerValueCallback: aBlock 
	self 
		greaseDeprecatedApi: 'WACallbackRegistry>>#registerValueCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (WAValueCallback on: aBlock)