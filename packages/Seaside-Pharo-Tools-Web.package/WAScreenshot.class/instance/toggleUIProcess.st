actions
toggleUIProcess
	| uiProcess |
	uiProcess := UIManager default uiProcess.
	uiProcess isSuspended
		ifTrue: [ uiProcess resume ]
		ifFalse: [ uiProcess suspend ]