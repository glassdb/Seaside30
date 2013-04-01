initialize-release
initStatusString: aString 
	| statusLine |
	statusLine := aString findTokens: ' '.
	(statusLine size between: 2 and: 3) 
		ifTrue: 
			[self method: statusLine first.
			rawUrl := statusLine second.
			url := (rawUrl copyUpTo: $?) unescapePercentsWithTextEncoding: nil.
			url size + 1 < rawUrl size 
				ifTrue: [self queryString: (rawUrl copyFrom: url size + 2 to: rawUrl size)].
			self protocol: statusLine third asUppercase]
		ifFalse: [^self error: 'invalid http status line']