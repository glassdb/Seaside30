*komhttpserverlight
asIpByteArray
	| ip tmp |
	ip := self subStrings: '.'.
	ip size = 4
		ifFalse: [ ^ self error: 'Invalid IP Address' ].
	ip
		detect: [ :ea | ea isPositiveInteger and: [ ea asNumber between: 0 and: 255 ] ]
		ifNone: [ ^ self error: 'Invalid IP Address' ].
	tmp := ByteArray new: 4.
	1 to: 4 do: [ :in | tmp at: in put: (ip at: in) asNumber ].
	^ tmp