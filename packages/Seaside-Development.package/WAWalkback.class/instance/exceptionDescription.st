accessing
exceptionDescription
	"Return a short string describing the exception."

	| e |
	^ String streamContents: [ :stream |
		e := self exception.
		stream nextPutAll: e class name.
		e messageText isNil ifFalse: [
			stream nextPutAll: ': '; nextPutAll: e messageText ] ]