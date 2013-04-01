converting
requestAddressFor: webRequest
	"Answer the remote socket address as a string"

	| first |
	first := true.
	^ String streamContents: [ :stream |
		webRequest stream socket remoteAddress do: [ :each |
			first
				ifTrue: [ first := false ]
				ifFalse: [ stream nextPut: $. ].
			stream nextPutAll: each asString ] ]