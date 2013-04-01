user authentication
isUsername: aUsername password: aPassword
	| pwHash cookieUsername cookiePassword |
	cookieUsername := self cookies at: #ComancheUsername ifAbsent: [^false].
	cookieUsername = aUsername ifFalse: [^false].

	cookiePassword := self cookies at: #ComanchePassword ifAbsent: [^false].
	pwHash := self hashPassword: aPassword.
	^cookiePassword = pwHash asString