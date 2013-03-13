accessing
nextPut: aCharacter 
	| value encoded |
	value := aCharacter greaseInteger.
	value < table size 
		ifFalse: [ stream nextPut: aCharacter ]
		ifTrue: [
			encoded := table at: value + 1.
			"Issue 482: use #notNil because it is faster than #isString because it is not actually sent"
			encoded notNil
				ifTrue: [ stream nextPutAll: encoded ]
				ifFalse: [ stream nextPut: aCharacter ] ]