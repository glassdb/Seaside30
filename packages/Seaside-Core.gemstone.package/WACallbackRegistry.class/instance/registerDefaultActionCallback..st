deprecated
registerDefaultActionCallback: aBlock 
	self 
		greaseDeprecatedApi: 'WACallbackRegistry>>#registerDefaultActionCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (WADefaultActionCallback on: aBlock)