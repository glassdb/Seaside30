handling
handleFiltered: aRequestContext
	| key continuation |
	key := aRequestContext request fields
		at: self actionField
		ifAbsent: [ ^ self start ].
		
	continuation := continuations
		at: key
		ifAbsent: [ ^ self unknownRequest ].
	continuation value