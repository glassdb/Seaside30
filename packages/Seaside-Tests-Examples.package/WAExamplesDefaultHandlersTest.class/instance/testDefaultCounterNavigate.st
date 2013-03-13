tests
testDefaultCounterNavigate
	| app |
	app := self defaultDispatcher entryPointAt: 'examples'.
	self assert: app class == WADispatcher.
	self assert: app isDispatcher.
	self deny: app isRoot.
	self deny: app isApplication.
	self deny: app parent isNil.
	self assert: app name = 'examples'.
	self assert: app url pathString = '/examples'.
	app := app entryPointAt: 'counter'.
	self assert: app class == WAApplication.
	self assert: app isApplication.
	self deny: app isDispatcher.
	self deny: app parent isNil.
	self assert: app name = 'counter'.
	self assert: app parent name = 'examples'.
	self assert: app url pathString = '/examples/counter'