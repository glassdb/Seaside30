deprecated
handleError: anError 
	self 
		greaseDeprecatedApi: 'WAErrorHandler class>>#handleError:'
		details: 'ExceptionHandlers should be allowed to set up their own exception handling code. See WAExceptionHandler class>>handleExceptionsDuring:.'.
	^ self new handleError: anError