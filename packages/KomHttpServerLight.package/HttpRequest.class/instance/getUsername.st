user authentication
getUsername
	^self cookies at: #ComancheUsername ifAbsent: []