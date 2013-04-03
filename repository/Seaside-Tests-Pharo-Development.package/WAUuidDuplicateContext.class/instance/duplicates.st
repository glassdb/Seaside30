public
duplicates
	| result |
	result := Dictionary new.
	duplicates keysAndValuesDo: [ :key :value |
		value size > 1 ifTrue: [
			result at: key put: value ] ].
	^ result