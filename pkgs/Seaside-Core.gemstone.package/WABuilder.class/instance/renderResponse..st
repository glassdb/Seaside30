deprecated
renderResponse: anObject 
	"This implementation will only work when used within a Session or something that has WACurrentRequestContext defined."
	self 
		greaseDeprecatedApi: 'WABuilder>>#renderResponse:'
		details: 'Returning a response is no longer allowed. Use WABuilder>>#render: to obtain the contents, configure the response returned by WARequestContext>>#response, then respond using WARequestContext>>#respond.'.
	self fullDocument: true.
	self requestContext respond: 
		[ :response | 
		response
			contentType: WAMimeType textHtml;
			nextPutAll: (self render: anObject) ]