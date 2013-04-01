processing
process: webRequest
	"Process the request; send the response back to the client"

	| webResponse |
	webResponse := super process: webRequest.
	webRequest sendResponse: webResponse content: webResponse content.
