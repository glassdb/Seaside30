private
sizeOfObject: anObject
	| headerSize instanceSize variableSize |
	headerSize := anObject class indexIfCompact > 0
		ifTrue: [ 4 ]
		ifFalse: [ 8 ].
	instanceSize := anObject class instSize.
	variableSize := anObject class isBytes
		ifTrue: [ anObject basicSize ]
		ifFalse: [
			anObject class isWords
				ifTrue: [ Smalltalk wordSize * anObject basicSize ]
				ifFalse: [ Smalltalk wordSize * anObject basicSize // 2 ] ].
	^ headerSize + instanceSize + variableSize