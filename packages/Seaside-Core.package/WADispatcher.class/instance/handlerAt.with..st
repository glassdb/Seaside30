accessing
handlerAt: aString with: aBlock
	^ (aString subStrings: '/') inject: self into: aBlock