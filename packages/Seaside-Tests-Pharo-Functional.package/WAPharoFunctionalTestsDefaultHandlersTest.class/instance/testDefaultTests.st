tests
testDefaultTests
	| app |
	app := self defaultDispatcher entryPointAt: 'tests'.
	self assert: app class == WADispatcher.
	self assert: app isDispatcher.
	self deny: app isRoot.
	self deny: app isApplication.
	self deny: app parent isNil.
	self assert: app name = 'tests'.
	self assert: app url pathString = '/tests'