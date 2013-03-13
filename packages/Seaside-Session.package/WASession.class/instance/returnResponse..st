deprecated
returnResponse: aResponse
	self 
		greaseDeprecatedApi: 'WASession>>#returnResponse:'
		details: 'Use WARequestContext>>#respond:. For example: "self requestContext respond: [:response | ... ]".'.

	"We can't really solve this consistenly."
	self error: 'You can no longer return a new WAResponse instance. You must instead modify the Response contained in the active RequestContext. Look for senders of #respond: and #response for examples.'