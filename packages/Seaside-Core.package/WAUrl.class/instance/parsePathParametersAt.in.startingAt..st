parsing
parsePathParametersAt: anIndex in: aString startingAt: startIndex
	| p |
	(aString notEmpty and: [ aString first = $/ ])
		ifTrue: [ path := nil ].
	p := self path.
	self pathElementsIn: aString do: [ :each |
		each = '..'
			ifTrue: [
				p isEmpty ifFalse: [
					p removeLast ] ]
			ifFalse: [
				each = '.' ifFalse: [
					| semiColonIndex |
					semiColonIndex := each indexOf: $;.
					semiColonIndex = 0
						ifTrue: [ p addLast: (self decode: each) ]
						ifFalse: [
							p addLast: (self decode: (each copyFrom: 1 to: semiColonIndex)) ] ] ] ].
	slash := aString notEmpty and: [ aString last = $/ ]