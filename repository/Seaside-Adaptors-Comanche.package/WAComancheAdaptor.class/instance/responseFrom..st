converting
responseFrom: aRequestContext 
	| response |
	response := HttpResponse new.
	aRequestContext response headers keysAndValuesDo: [ :key :value | 
		key = 'Content-Type' 
			ifTrue: [ response contentType: value greaseString ]
			ifFalse: [
				response 
					fieldAt: key
					put: value greaseString ] ].
	self 
		convertCookiesFrom: aRequestContext response
		to: response.
	response status: (HttpResponse statusSymbolFor: aRequestContext response status).
	response contents: aRequestContext response stream contents readStream.
	^ response