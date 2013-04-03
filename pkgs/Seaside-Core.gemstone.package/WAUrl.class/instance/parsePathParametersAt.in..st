parsing
parsePathParametersAt: anIndex in: aString
	self subStringsIn: aString splitBy: $; do: [ :parameter |
		| equalIndex |
		equalIndex := parameter indexOf: $=.
		equalIndex = 0
			ifTrue: [ self addPathParameterAt: anIndex key: parameter ]
			ifFalse: [
				| key |
				key := parameter copyFrom: 1 to: equalIndex - 1.
				self
					subStringsIn: (parameter copyFrom: equalIndex + 1 to: parameter size)
					splitBy: $,
					do: [ :each |
						self addPathParameterAt: anIndex key: key value: each ] ] ]