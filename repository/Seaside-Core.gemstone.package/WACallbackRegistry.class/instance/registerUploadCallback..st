deprecated
registerUploadCallback: aBlock 
	self 
		greaseDeprecatedApi: 'WACallbackRegistry>>#registerUploadCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (WAUploadCallback on: aBlock)