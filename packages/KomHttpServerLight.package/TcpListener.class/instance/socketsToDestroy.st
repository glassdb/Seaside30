accessing
socketsToDestroy

	^socketsToDestroy ifNil: 
		[socketsToDestroy := OrderedCollection new].
