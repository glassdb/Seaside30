*seaside-pharo-core-document
greaseNext: anInteger putAll: aCollection startingAt: startIndex
	| index |
	index := GRPlatform current indexOfFirstUnsafeUrlCharacterIn: aCollection startingAt: startIndex.
	(index = 0 or: [ index >= (startIndex + anInteger) ])
		ifTrue: [
			stream greaseNext: anInteger putAll: aCollection startingAt: startIndex ]
		ifFalse: [ self nextPutAll: (aCollection copyFrom: startIndex to: startIndex + anInteger - 1) ]