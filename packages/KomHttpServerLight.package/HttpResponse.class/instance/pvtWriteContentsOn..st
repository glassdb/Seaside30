responding
pvtWriteContentsOn: aStream
	| chunkSize cnts |
	chunkSize := self responseChunkSize.
	cnts := self contents.

	(contents isBinary and: [ aStream isBinary not ])
		ifTrue: [ aStream binary ].
	[cnts atEnd] whileFalse: 
		[aStream nextPutAll: (cnts next: chunkSize); flush]