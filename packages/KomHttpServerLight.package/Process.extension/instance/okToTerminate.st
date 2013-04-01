*komhttpserverlight
okToTerminate

	self suspendedContext ifNotNilDo: 
		[ :suspendedCtx |
		suspendedCtx stackDo: 
			[ :ctx |
			ctx method == self class termMethod
				ifTrue: [^true]]].
	^false