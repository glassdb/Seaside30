generation
notFound
	"The resource could not be found and the request processing was aborted."
	self ifResetPossible: [
		self response
			notFound;
			contentType: WAMimeType textPlain ].
	self response
		nextPutAll: self request url pathString;
		nextPutAll: ' not found'