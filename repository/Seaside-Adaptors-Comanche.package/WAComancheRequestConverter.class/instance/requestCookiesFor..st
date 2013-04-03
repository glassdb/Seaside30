converting-request
requestCookiesFor: aNativeRequest
	^ WARequestCookie fromString: (aNativeRequest header at: 'cookie' ifAbsent: [ nil ])