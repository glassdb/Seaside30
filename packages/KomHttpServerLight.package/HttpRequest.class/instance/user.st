accessing
user
	"currently, only basic authentication is supported"

	| userID i |
	userID := self header at: 'authorization' ifAbsent: [^nil].
	userID := (userID notNil and: [(i := userID findString: 'Basic ') > 0]) 
		ifTrue: [userID copyFrom: i + 6 to: userID size]
		ifFalse: [nil].
	^userID