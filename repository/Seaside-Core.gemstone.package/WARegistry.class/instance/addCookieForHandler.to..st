handling-helpers
addCookieForHandler: aRequestHandler to: aRequestContext
	"Create a new handler key cookie and att it to the response."
	
	aRequestContext response addCookie: 
		(aRequestContext newCookie
			key: self keyCookieName;
			value: (self keyFor: aRequestHandler);
			discard: true;
			comment: 'the Seaside Session Cookie';
			commentUrl: 'http://www.seaside.st/documentation/sessionCookie';
			yourself)