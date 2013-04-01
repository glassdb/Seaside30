authentication
hashPassword: aPassword
	^SecureHashAlgorithm new hashMessage:
		(aPassword, ':', self secretWord)