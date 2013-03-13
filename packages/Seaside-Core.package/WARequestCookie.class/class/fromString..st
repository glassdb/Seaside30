instance creation
fromString: aString 
	"Creates an array of cookies from a HTTP Cookie: header value."
	| version tokens cookieLine current |
	cookieLine := aString.
	aString isEmptyOrNil
		ifTrue: [ ^ #() ].
	tokens := cookieLine subStrings: ';'.
	current := nil.
	^ Array streamContents: [ :cookies | 
		tokens do: [ :each | 
			| key value action |
			key := self keyFrom: each.
			value := self valueFrom: each.
			key = '$Version' 
				ifTrue: [
					version := value greaseInteger ]
				ifFalse: [
					action := self actions 
						at: key
						ifAbsent: [ nil ].
					action isNil 
						ifTrue: [
							current := self 
								key: key
								value: value.
							current version: version.
							cookies nextPut: current ]
						ifFalse: [
							action 
								value: current
								value: value ] ] ] ]