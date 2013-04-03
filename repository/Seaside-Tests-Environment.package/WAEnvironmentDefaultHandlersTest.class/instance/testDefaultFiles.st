tests
testDefaultFiles
	| app |
	app := self defaultDispatcher entryPointAt: 'files'.
	self assert: app class == WAFileHandler.
	self deny: app isDispatcher.
	self deny: app isApplication.
	self deny: app parent isNil.
	self assert: app name = 'files'.
	self assert: app url pathString = '/files'