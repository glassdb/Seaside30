handling-helpers
keyFromFieldValue: aStringOrNil cookie: aCookieOrNil
	"Combine the keys from the URL and cookie.
	If we have a URL key we always use that. If not, we use the cookie if it is present."
	
	aStringOrNil isNil ifFalse: [ ^ aStringOrNil ].
	aCookieOrNil isNil ifFalse: [ ^ aCookieOrNil value ].
	^ nil
	