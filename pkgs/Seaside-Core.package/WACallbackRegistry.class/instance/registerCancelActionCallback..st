deprecated
registerCancelActionCallback: aBlock 
	self 
		greaseDeprecatedApi: 'WACallbackRegistry>>#registerCancelActionCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (WACancelActionCallback on: aBlock)