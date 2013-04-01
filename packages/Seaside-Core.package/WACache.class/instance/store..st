public
store: anObject
	"Store anObject in the cache, generating a new random key. Return the key."
	
	| key |
	mutex critical: [
		[ objectsByKey includesKey:
			(key := WAKeyGenerator current keyOfLength: self keySize) ] whileTrue.
		self at: key put: anObject ].
	
	^ key