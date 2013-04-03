tests
testDefaultCounterDirect
	| app |
	app := self defaultDispatcher entryPointAt: 'examples/counter'.
	self assert: app class == WAApplication.
	self assert: app isApplication.
	self deny: app isDispatcher.
	self deny: app parent isNil.
	self assert: app name = 'counter'.
	self assert: app parent name = 'examples'.
	self assert: app url pathString = '/examples/counter'