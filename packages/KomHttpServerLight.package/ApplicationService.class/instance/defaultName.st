accessing
defaultName

	| title |
	title := self class name.
	^(title first isVowel ifTrue: ['an '] ifFalse: ['a ']), title