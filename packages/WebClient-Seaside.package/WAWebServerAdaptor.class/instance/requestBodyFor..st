converting
requestBodyFor: webRequest
	"Answer the undecoded request body as a String."

	^(webRequest contentLength = nil and:[webRequest isGetRequest])
		ifTrue:[nil]
		ifFalse:[webRequest content]