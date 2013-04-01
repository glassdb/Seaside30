responding
pvtWriteFieldsOn: aStream

	fields isEmptyOrNil ifTrue: [ ^self ].

	fields keysAndValuesDo: [ :k :v |
		aStream
			nextPutAll: k;
			nextPutAll: ': ';
			nextPutAll: v;
			nextPutAll: String crlf
	]