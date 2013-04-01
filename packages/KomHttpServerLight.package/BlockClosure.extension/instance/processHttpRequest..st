*komhttpserverlight
processHttpRequest: aRequest
	"<HttpResponse> The receiver should answer an HttpResponse for sending 
	to the client."

	self numArgs = 1
		ifTrue: [ ^ self value: aRequest ].
	self numArgs = 0
		ifTrue: [ ^ self value ]