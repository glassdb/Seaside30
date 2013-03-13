*javascript-core
asJson
	^ String streamContents: [ :stream | self jsonOn: stream ]