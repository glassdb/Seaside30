*komhttpserverlight
isPositiveInteger

	self isEmpty ifTrue: [^false].
	self detect: [ :letter | letter isDigit not] ifNone: [^true].
	^false