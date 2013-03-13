encoding
encodeDictionary: aDictionary on: aStream 
	"Dictionary or hash-maps common structures in JSON to aStream."
	
	| first |
	first := true.
	aStream nextPut: ${.
	aDictionary keysAndValuesDo: [ :key :value |
		first
			ifTrue: [ first := false ]
			ifFalse: [ aStream nextPut: $, ].
		aStream 
			json: key greaseString;
			nextPut: $:;
			json: value ].
	aStream nextPut: $}