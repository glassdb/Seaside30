error handling
handleDispatchErrorsIn: aBlock
	"Note: We could break the error handling out into a separate
	object to allow more sophisticated error handling scenarios, however
	you can achieve the same result by writing a module that traps 
	errors and provides special handling.  So, here, we just provide three
	simple and common possibilities for handling dispatch errors."

	"Debug mode doesn't handle the error (you'll get a walkbalk)"
	self isDebugMode ifTrue: [^aBlock value].

	"Verbose mode will send a long stack dump to the browser"
	self isVerboseMode ifTrue: 
		[^aBlock on: Error do: 
			[ :ex | 
			self
				detailedErrorResponseStatus: #serverError
				exception: ex]].

	"By default, operate in deployment mode (just the exception description is
	displayed in the browser)"
	^aBlock on: Error do: 
		[ :ex | 
		self
			errorResponseStatus: #serverError
			description: ex description]