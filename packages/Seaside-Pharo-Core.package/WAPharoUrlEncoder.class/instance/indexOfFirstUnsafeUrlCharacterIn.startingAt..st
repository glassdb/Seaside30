*seaside-pharo-core-document
indexOfFirstUnsafeUrlCharacterIn: aString startingAt: startIndex
	^ aString isWideString "use slow fallback for WideStrings"
		ifTrue: [ startIndex ]
		ifFalse: [ ByteString findFirstInString: aString inSet: table startingAt: startIndex ]