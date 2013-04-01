parsing
decodeUrlEncodedForm: string multipleValues: boolean
	| dict key value start end eqSignPos more |
	dict := boolean ifTrue: [HttpFormDictionary new] ifFalse: [Dictionary new].
	string isEmptyOrNil ifTrue: [^dict].
	more := true.
	start := 1.
	[end := string indexOf: $& startingAt: start.
	end == 0
		ifTrue: [end := string size. more := false]
		ifFalse: [end := end - 1].
	eqSignPos := string indexOf: $= startingAt: start.
	(eqSignPos > end or: [eqSignPos == 0])
		ifTrue: [key := (key := string copyFrom: start to: end) unescapePercentsWithTextEncoding: nil.
			value := '']
		ifFalse: [key := (key := string copyFrom: start to: eqSignPos-1) unescapePercentsWithTextEncoding: nil.
			value := (value := string copyFrom: eqSignPos+1 to: end) unescapePercentsWithTextEncoding: nil].
	self addKey: key value: value toForm: dict multipleValues: boolean.
	start := end + 2.
	dict size > self maxDictionarySize
		ifTrue: [ ^ dict ].
	more] whileTrue.

	^dict