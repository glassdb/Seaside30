processing
start
	| root |
	root := self createRoot.
	self session properties at: #presenter put: root.
	self prepareRoot: root.
	((self application preferenceAt: #renderPhaseContinuationClass) new) captureAndInvoke