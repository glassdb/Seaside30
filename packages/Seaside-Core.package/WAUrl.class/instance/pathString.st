converting
pathString
	"Answer the path converted to a string."

	^ String streamContents: [ :stream | 
		| document |
		document := WAHtmlDocument on: stream.
		self encodePathOn: document ]