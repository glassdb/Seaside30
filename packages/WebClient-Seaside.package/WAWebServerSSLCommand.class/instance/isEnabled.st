accessing
isEnabled
	^self isActive and:[Smalltalk includesKey: #SqueakSSL]