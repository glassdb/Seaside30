initialization
initializeWithMethod: methodString uri: aUrlOrString version: aVersion
	self initialize.
	method := methodString asUppercase.
	uri := aUrlOrString seasideUrl.
	version := aVersion.
	headers := WAHeaderFields new.
	postFields := Dictionary new.
	cookies := OrderedCollection new.
	remoteAddress := nil