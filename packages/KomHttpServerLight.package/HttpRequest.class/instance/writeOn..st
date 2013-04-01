printing
writeOn: aStream
	"this can be used to form a client-side request and send it over network"

	aStream
		nextPutAll: self method;
		nextPut: $ ;
		nextPutAll: self url;
		nextPut: $ ;
		nextPutAll: self protocol;
		nextPutAll: (String with: Character cr with: Character lf).
	self header
		keysAndValuesDo: [ :key :value | 
			aStream
				nextPutAll: key;
				nextPutAll: ': ';
				nextPutAll: value;
				nextPutAll: (String with: Character cr with: Character lf) ].
	aStream nextPutAll: (String with: Character cr with: Character lf)	"aStream nextPutAll: self body asString"