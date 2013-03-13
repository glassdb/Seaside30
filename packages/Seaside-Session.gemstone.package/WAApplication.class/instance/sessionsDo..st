enumerating
sessionsDo: aBlock
	self handlersDo: [ :handler | 
		handler isSession
			ifTrue: [ aBlock value: handler ] ]