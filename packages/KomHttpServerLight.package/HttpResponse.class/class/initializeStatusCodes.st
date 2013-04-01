initialization
initializeStatusCodes
	"  HttpResponse initializeStatusCodes  "

	StatusCodes := IdentityDictionary new
		"1xx: Meta status codes"
		at: #continue				put: ('100' -> 'Continue');
		at: #switchingProtocols	put: ('101' -> 'Switching Protocols');
		at: #processing			put: ('102' -> 'Processing'); "WebDav RFC: 2518"
		"2xx: Success status codes"
		at: #ok								put: ('200' -> 'OK');
		at: #created							put: ('201' -> 'Created');
		at: #accepted							put: ('202' -> 'Accepted');
		at: #nonAuthoritativeInformation 	put: ('203' -> 'Non-Authoritative Information');
		at: #noContent						put: ('204' -> 'No Content');
		at: #resetContent	 					put: ('205' -> 'Reset Content');
		at: #partialContent					put: ('206' -> 'Partial Content');
		at: #multiStatus						put: ('207' -> 'Multi-Status'); "WebDav RFC: 2518"
		"3xx: Redirection status codes"
		at: #multipleChoices		put: ('300' -> 'Multiple Choices');
		at: #permMoved			put: ('301' -> 'Moved Permanently'); "kept for compatibility"
		at: #permanentlyMoved	put: ('301' -> 'Moved Permanently');
		at: #found					put: ('302' -> 'Found');
		at: #seeOther				put: ('303' -> 'See Other');								
		at: #notModified			put: ('304' -> 'Not Modified');
		at: #useProxy				put: ('305' -> 'Use Proxy');
		at: #temporaryRedirect	put: ('307' -> 'Temporary Redirect');
		at: #tempMoved			put: ('307' -> 'Temporary Redirect'); "kept for compatibility"
		"4xx: Client-Side Error status code"
		at: #badRequest				put: ('400' -> 'Bad Request');
		at: #unauthorized				put: ('401' -> 'Unauthorized');
		at: #payment					put: ('402' -> 'Payment Required');
		at: #forbidden				put: ('403' -> 'Forbidden');
		at: #notFound					put: ('404' -> 'Not Found');
		at: #notAllowed				put: ('405' -> 'Method Not Allowed');
		at: #notAcceptable			put: ('406' -> 'Not Acceptable');
		at: #proxyAuthRequired		put: ('407' -> 'Proxy Authentication Required');
		at: #requestTimeout			put: ('408' -> 'Request Timeout');
		at: #conflict					put: ('409' -> 'Conflict');
		at: #gone						put: ('410' -> 'Gone');
		at: #lenghtRequired			put: ('411' -> 'Lenght Required');
		at: #preconditionFailed		put: ('412' -> 'Precondition Failed');
		at: #entityTooLarge			put: ('413' -> 'Request Entity Too Large');
		at: #uriTooLong				put: ('414' -> 'Request-URI Too Long');
		at: #unsupportedMediaType	put: ('415' -> 'Unsupported Media Type');
		at: #rangeNotSatisfiable	put: ('416' -> 'Requested Range Not Satisfiable');
		at: #expectationFailed		put: ('417' -> 'Expectation Failed');
		at: #unprocessableEntity	put: ('422' -> 'Unprocessable Entity'); "WebDav RFC: 2518"
		at: #locked					put: ('423' -> 'Locked'); "WebDav RFC: 2518"
		at: #failedDependency		put: ('424' -> 'Failed Dependency'); "WebDav RFC: 2518"
		"5xx: Server-Side Error status codes"
		at: #serverError				put: ('500' -> 'Internal Server Error');
		at: #notImplemented			put: ('501' -> 'Not Implemented');
		at: #badGateway				put: ('502' -> 'Bad Gateway');
		at: #serviceUnavailable		put: ('503' -> 'Service Unavailable');
		at: #gatewayTimeout			put: ('504' -> 'Gateway Timeout');
		at: #versionNotSupported	put: ('505' -> 'HTTP Version Not Supported');
		at: #InsufficientStorage	put: ('507' -> 'Insufficient Storage'); 	"WebDav RFC: 2518"
 		yourself.

	"Initialize an inverse mapping to lookup a symbol based on the numeric code"
	StatusSymbols := Dictionary new.
	StatusCodes associationsDo: 
		[ :assn |
		StatusSymbols at: assn value key asNumber put: assn key].