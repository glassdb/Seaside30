deprecated
registerMapCallback: aBlock 
	self 
		greaseDeprecatedApi: 'WACallbackRegistry>>#registerMapCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (WAMapCallback on: aBlock)