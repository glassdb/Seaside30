error handling
handleResponseWritingError: anException
	"Handle errors that occur when trying to write out a response."

	"Debug mode doesn't handle the error (you'll get a walkbalk)"
	self isDebugMode ifTrue: [^anException pass].

	"Verbose mode will send a long stack dump to the browser"
	self isVerboseMode ifTrue: 
		[^self
			detailedErrorResponseStatus: #serverError
			exception: anException].

	"By default, operate in deployment mode (just the exception description is
	displayed in the browser)"
	^self
		errorResponseStatus: #serverError
		description: anException description