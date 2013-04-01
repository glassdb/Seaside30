generation
forbidden
	"The resource is forbidden to access and the request was not processed."
	self ifResetPossible: [
		self response
			forbidden;
			contentType: WAMimeType textPlain ].
	self response
		nextPutAll: 'Error: you are forbidden to access "';
		nextPutAll: self request url pathString;
		nextPutAll: '"'