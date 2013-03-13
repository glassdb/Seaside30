deprecated
registerCallback: aBlock 
	self 
		greaseDeprecatedApi: 'WACallbackRegistry>>#registerCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (WAValueCallback on: aBlock)