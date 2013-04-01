accessing
toggleUIText
	^ Project uiProcess isSuspended
		ifFalse: [ 'Suspend UI Process' ]
		ifTrue: [ 'Resume UI Process' ]