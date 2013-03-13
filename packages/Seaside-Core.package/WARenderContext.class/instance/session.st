deprecated
session
	self 
		greaseDeprecatedApi: 'WARenderContext>>#session'
		details: 'The session is no longer stored in the render context. You can get at the session in the current request context by calling "self session" from any subclass of WAObject.'.
	^ super session