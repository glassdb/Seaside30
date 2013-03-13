deprecated
handleWarning: aWarning 
	self 
		greaseDeprecatedApi: 'WAErrorHandler class>>#handleWarning:'
		details: 'ExceptionHandlers should be allowed to set up their own exception handling code. See WAExceptionHandler class>>handleExceptionsDuring:.'.
	^ self new handleWarning: aWarning