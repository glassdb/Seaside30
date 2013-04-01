dispatching
notFoundResponseFor: request

	^self httpService
		errorResponseStatus: #notFound
		description: ('The requested URL ', request url, ' was not found on this server').