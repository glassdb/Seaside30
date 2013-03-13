processing
handleRequest
	self session clearJumpTo.
	self respond: [ :response | self processRendering: response ].

	"The render phase should have returned a response"
	WAMissingResponseError signal