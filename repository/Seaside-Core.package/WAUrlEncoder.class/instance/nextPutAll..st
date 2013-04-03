accessing
nextPutAll: aString
	(GRPlatform current includesUnsafeUrlCharacter: aString)
		ifTrue: [ super nextPutAll: aString ]
		ifFalse: [ stream nextPutAll: aString ]