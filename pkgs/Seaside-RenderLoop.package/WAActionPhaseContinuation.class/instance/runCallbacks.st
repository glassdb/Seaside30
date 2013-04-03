processing
runCallbacks
	[
	self withNotificationHandlerDo: [ 
		self renderContext callbacks handle: self requestContext ].
	(WAVisiblePresenterGuide client: (WATaskVisitor new)) start: self presenter ]
		ensure: [ self request isXmlHttpRequest ifTrue: [ self captureState ] ]