tests
testUnregister
	| url |
	url := normalApplication url.
	url path removeFirst.
	self assert: (WAAdmin unregister: url pathString in: rootHandler) = normalApplication.
	self assert: (WAAdmin unregister: url pathString in: rootHandler) isNil.
	
	url := childHandler url.
	url path removeFirst.
	self assert: (WAAdmin unregister: url pathString in: rootHandler) = childHandler.
	self assert: (WAAdmin unregister: url pathString in: rootHandler) isNil.
	
	self assert: (WAAdmin unregister: '/not-existing' in: rootHandler) isNil