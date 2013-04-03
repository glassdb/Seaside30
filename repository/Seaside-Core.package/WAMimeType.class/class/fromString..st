instance creation
fromString: aString 
	| main endOfSub sub parts parameters slashIndex |
	slashIndex := aString indexOf: $/.
	slashIndex = 0
		ifTrue: [
			"work arount for Issue 655
			some user agents just send '*', not '*/*'"
			endOfSub := aString indexOf: $;.
			endOfSub = 0
				ifTrue: [
					main := aString.
					endOfSub := aString size ]
				ifFalse: [
					main := aString copyFrom: 1 to: endOfSub - 1 ].
			sub := main ]
		ifFalse: [
			main := aString copyUpTo: $/.
			endOfSub := aString indexOf: $;.
			endOfSub := endOfSub = 0 
				ifTrue: [ aString size ]
				ifFalse: [ endOfSub - 1 ].
			sub := aString 
				copyFrom: main size + 2
				to: endOfSub ].
	endOfSub = aString size ifTrue: [
		^ self 
			main: main
			sub: sub ].
	parts := (aString 
		copyFrom: endOfSub + 1
		to: aString size) subStrings: ';'.
	parameters := GRSmallDictionary new.
	parts do: [ :each | 
		parameters 
			at: (each copyUpTo: $=) trimBoth
			put: (each copyAfter: $=) trimBoth ].
	^ self 
		main: main
		sub: sub
		parameters: parameters