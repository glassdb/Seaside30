*javascript-core
registerAjaxCallback: aBlock 
	self 
		greaseDeprecatedApi: 'WACallbackRegistry>>#registerAjaxCallback:'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: (JSAjaxCallback on: aBlock)