public
store: anObject
	"Store anObject in the cache, generating a new random key. Return the key."
	
	| key |
	mutex critical: [
		[ objectsByKey includesKey:
			(key := WAKeyGenerator current keyOfLength: self keySize) ] whileTrue.
		objectsByKey at: key put: anObject.
		keysByObject at: anObject put: key.
		self notifyStored: anObject key: key ].
	
	^ key