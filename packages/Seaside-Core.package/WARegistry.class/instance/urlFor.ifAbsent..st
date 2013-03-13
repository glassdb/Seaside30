accessing
urlFor: aRequestHandler ifAbsent: absentBlock
	"Return the URL for the given request handler. If the handler is not registered, return
	the result of absentBlock.
	This URL will include the handler's key; if you don't want this, use #url instead."

	| key url |
	key := self keyFor: aRequestHandler ifAbsent: [ ^ absentBlock value ].
	url := self url.
	"Another option would be to have the Registry cache the cookie in the request context."
	(self hasCookieInContext: self requestContext withValue: key)
		"add the url field if the cookie is pointing to a different one"
		ifFalse: [ url addField: self keyField value: key ].
		
	^ url