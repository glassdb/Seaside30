decoding
decodePercent: aString
	"percent decodes the given String"
	| input output char |
	input := aString readStream.
	output := WriteStream on: (String new: aString size).
	[ input atEnd ] whileFalse: [
		char := input next.
		output nextPut: (char = $+
			ifTrue: [ Character space ]
			ifFalse: [
				char = $%
					ifTrue: [
						Character codePoint: input next asUppercase digitValue * 16
							+ input next asUppercase digitValue ]
					ifFalse: [ char ] ]) ].
	^ output contents