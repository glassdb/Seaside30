generation
internalError: anException
	"An internal error occurred while processing the request."

	self ifResetPossible: [
		self response 
			internalError;
			contentType: WAMimeType textPlain ].
	self response
		nextPutAll: 'Internal Error: ';
		nextPutAll: (anException messageText ifNil: [ String new ])