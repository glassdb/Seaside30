deprecated
registerActionCallback: aBlock 
	self 
		greaseDeprecatedApi: 'WACallbackRegistry>>#registerActionCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (WAActionCallback on: aBlock)