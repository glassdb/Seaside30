initialization
initializeFromIPAddress: str
	| nums |
	(str occurrencesOf: $.) = 3
		ifFalse: [ ^ self ].
	nums := (str subStrings: '.')
		collect: [ :ea | 
			ea isPositiveInteger
				ifTrue: [ ea asNumber ]
				ifFalse: [ ^ self ] ].
	name := nums.
	type := #address