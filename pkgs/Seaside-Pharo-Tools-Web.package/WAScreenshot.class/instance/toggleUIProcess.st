actions
toggleUIProcess
	self uiProcess isSuspended
		ifTrue: [ self uiProcess resume ]
		ifFalse: [ self uiProcess suspend ]