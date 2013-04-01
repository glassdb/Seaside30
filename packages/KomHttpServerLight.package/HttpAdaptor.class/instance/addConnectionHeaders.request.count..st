processing
addConnectionHeaders: response request: request count: count

	response fieldAt: 'Server' put: self serverType.
	response fieldAt: 'Date' put: self timeStamp.
	(request isPersistent and: [self keepAlive])
		ifTrue: 
			[response fieldAt: 'Connection' put: 'Keep-Alive'.
			response fieldAt: 'Keep-Alive' put: 
				(String streamContents: 
					[ :s |
					s nextPutAll: 'timeout='.
					s nextPutAll: self dataTimeout asString.
					s nextPutAll: ', max='.
					s nextPutAll: (self maxKeepAliveRequests - count) asString])]
		ifFalse: 
			[response fieldAt: 'Connection' put: 'close'].
