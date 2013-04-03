deprecated
registerDispatchCallback
	self 
		greaseDeprecatedApi: 'WACallbackRegistry>>#registerDispatchCallback'
		details: 'Use WACallbackRegistry>>#store: instead.'.
	^ self store: WADispatchCallback new