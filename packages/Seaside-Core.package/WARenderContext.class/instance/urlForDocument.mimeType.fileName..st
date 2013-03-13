documents
urlForDocument: anObject mimeType: mimeType fileName: fileName
	| handler |
	handler := (WADocumentHandler
		document: anObject
		mimeType: mimeType
		fileName: fileName).
	^ self requestContext registry
		register: handler;
		urlFor: handler