dispatching
dispatchRequest: request 
	"<HttpResponse> Dispatches an HttpRequest as a method to the target and
	answers an HttpResponse to be transferred to the client"

	| response |
	response := self errorHandler 
		handleDispatchErrorsIn: [ self target processHttpRequest: request ].
	response ifNil: [ response := self notFoundResponseFor: request ].
	response addCookies: request responseCookies.
	^response