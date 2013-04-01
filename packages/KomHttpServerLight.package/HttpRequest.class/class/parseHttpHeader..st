parsing
parseHttpHeader: string
	| dict key value start end more colonPos fieldDelims lastKey keyValueDelim crlf |
	dict := Dictionary new.
	crlf := String crlf.
	string isEmptyOrNil ifTrue: [^dict].
	fieldDelims := crlf asCharacterSet.
	keyValueDelim := $:.
	more := true.
	start := end := 1.
	lastKey := ''.
	[end := string indexOfAnyOf: fieldDelims startingAt: start.
	end == 0
		ifTrue: [end := string size. more := false]
		ifFalse: [end := end - 1].
	(end >= start and: [start < string size])
		ifTrue: [
			(string at: start) isSeparator
				ifTrue:
					[dict
						at: lastKey
						put: (dict at: lastKey), (string copyFrom: start to: end)]
				ifFalse:
					[colonPos := string indexOf: keyValueDelim startingAt: start.
					(colonPos > end or: [colonPos == 0])
						ifTrue:
							[key := (string copyFrom: start to: end) translateToLowercase.
							value := '']
						ifFalse:
							[key := (string copyFrom: start to: colonPos-1) translateToLowercase.
							value := (string copyFrom: colonPos+1 to: end) withBlanksTrimmed]].
			key isEmpty
				ifFalse: [dict at: key put: value.
					lastKey := key.
					key := ''].
			start := string skipDelimiters: crlf startingAt: end+1].
	dict size > self maxDictionarySize
		ifTrue: [ ^ dict ].
	more] whileTrue.

	^dict