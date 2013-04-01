converting
requestHeadersFor: webRequest
	"Answer the request headers for the webRequest."

	| dict |
	dict := Dictionary new.
	webRequest headersDo:[:key :val|
		"RFC 2616: Multiple message-header fields with the same field-name MAY be present in a message if and only if the entire field-value for that header field is defined as a comma-separated list [i.e., #(values)]. It MUST be possible to combine the multiple header fields into one 'field-name: field-value' pair, without changing the semantics of the message, by appending each subsequent field-value to the first, each separated by a comma."
		(dict includesKey: key)
			ifTrue:[dict at: key modify:[:old| old, ', ', val]]
			ifFalse:[dict at: key put: val]].
	^dict