accessing
servicesNamed: aString

	^self services select: [ :ea | ea name = aString ]