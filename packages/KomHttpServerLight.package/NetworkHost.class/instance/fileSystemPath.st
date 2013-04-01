accessing
fileSystemPath
	| delim |
	delim := FileDirectory pathNameDelimiter.

	^String streamContents: 
		[ :strm |
		self isNamedHost
			ifTrue: [strm nextPutAll: 'hostname']
			ifFalse: [strm nextPutAll: 'ipaddress'].
		strm nextPut: delim.
		self name reversed 
			do:
				[ :part | strm nextPutAll: part asString ]
			separatedBy: 
				[ strm nextPut: delim ]]