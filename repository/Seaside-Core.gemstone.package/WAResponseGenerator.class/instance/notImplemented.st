generation
notImplemented
	"The functionality requested is not implemented and the request processing was aborted."

	self response 
		notImplemented;
		contentType: WAMimeType textPlain;
		nextPutAll: 'Not Implemented'