converting
requestCookiesFor: webRequest
	"Answer a WARequestCookie from the request"

	^WARequestCookie fromString: (webRequest headerAt: 'cookie' ifAbsent: [ nil ])