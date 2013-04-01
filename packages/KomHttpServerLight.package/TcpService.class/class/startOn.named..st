instance creation
startOn: portNumber named: aString

	^(self on: portNumber
		named: aString)
		start;
		yourself
