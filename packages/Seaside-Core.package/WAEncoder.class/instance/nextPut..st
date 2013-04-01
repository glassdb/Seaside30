accessing
nextPut: aCharacter 
	| value encoded |
	value := aCharacter greaseInteger.
	value < table size 
		ifFalse: [ stream nextPut: aCharacter ]
		ifTrue: [
			encoded := table at: value + 1.
			encoded isString
				ifTrue: [ stream nextPutAll: encoded ]
				ifFalse: [ stream nextPut: aCharacter ] ]