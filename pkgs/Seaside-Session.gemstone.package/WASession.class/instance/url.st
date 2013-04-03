accessing
url
	| url |
	url := super url.
	jumpTo isNil
		ifFalse: [ url fragment: jumpTo ].
	^ url