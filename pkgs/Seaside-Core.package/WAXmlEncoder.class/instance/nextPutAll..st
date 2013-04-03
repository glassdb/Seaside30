accessing
nextPutAll: aString
	(GRPlatform current includesUnsafeXmlCharacter: aString)
		ifFalse: [ stream nextPutAll: aString ]
		ifTrue: [
			1 to: aString size do: [ :index |
			| character value encoded |
			character := aString at: index.
			value := character greaseInteger.
			value < table size 
				ifFalse: [
					"no need to encode, unsafe characters are all ascii"
					stream nextPut: character ]
				ifTrue: [
					encoded := table at: value + 1.
					"Issue 482: use #notNil because it is faster than #isString because it is not actually sent"
					encoded notNil 
						ifTrue: [ stream nextPutAll: encoded ]
						ifFalse: [ stream nextPut: character ] ] ] ]