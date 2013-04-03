generation
notFound
	"The resource could not be found and the request processing was aborted."
	self response
		notFound;
		contentType: WAMimeType textPlain;
		nextPutAll: self request url pathString;
		nextPutAll: ' not found'