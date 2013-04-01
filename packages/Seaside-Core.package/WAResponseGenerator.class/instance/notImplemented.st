generation
notImplemented
	"The functionality requested is not implemented and the request processing was aborted."

	self ifResetPossible: [
		self response 
			notImplemented;
			contentType: WAMimeType textPlain ].
	self response
		nextPutAll: 'Not Implemented'