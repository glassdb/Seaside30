deprecated
basePath
	self greaseDeprecatedApi: 'WARequestHandler>>#basePath'
		details: 'Use WARequestHandler>>#url to get a WAUrl object and then #pathString if you want th path.'.
	^ self url pathString