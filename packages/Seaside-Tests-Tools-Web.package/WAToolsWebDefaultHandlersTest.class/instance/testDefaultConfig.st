tests
testDefaultConfig
	| app |
	app := self defaultDispatcher entryPointAt: 'config'.
	self assert: app class == WAApplication.
	self assert: app isApplication.
	self deny: app isDispatcher.
	self deny: app parent isNil.
	self assert: app name = 'config'.
	self assert: app url pathString = '/config'