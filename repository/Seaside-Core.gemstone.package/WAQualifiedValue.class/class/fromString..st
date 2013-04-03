instance creation
fromString: aString
	^ Array streamContents: [ :stream |
		| values |
		values := aString subStrings: ','.
		values do: [ :each |
			| value quality |
			value := self valueClass fromString: (each copyUpTo: $;) trimBoth.
			quality := (each includes: $;)
				ifTrue: [
					| qualityString |
					qualityString := (each copyAfter: $;) copyAfter: $=.
					qualityString first = $. ifTrue: [
						"work around for Issue 655
						some user agents send '.2' instead of '2.0'"
						qualityString := '0', qualityString ].
					Float readFrom: qualityString readStream ]
				ifFalse: [ 1.0 ].
			stream nextPut: (self value: value quality: quality) ] ]