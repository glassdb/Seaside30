converting
greaseString
	^ String streamContents: 
		[ :stream | 
		stream nextPutAll: self language.
		self country isNil ifFalse: 
			[ stream
				nextPut: $-;
				nextPutAll: self country ] ]