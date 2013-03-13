accessing
absoluteUrlForResource: aString 
	| url |
	aString isNil ifTrue: [ ^ nil ].
	url := self resourceUrl.
	(url isNil or: [ aString includesSubString: '://' ]) ifTrue: [ ^ WAUrl absolute: aString ].
	^ url copy addToPath: aString; yourself