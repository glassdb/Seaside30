accessing
serviceNamed: aString ifAbsent: aBlock

	^self services 
		detect: [ :ea | ea name = aString ] 
		ifNone: aBlock