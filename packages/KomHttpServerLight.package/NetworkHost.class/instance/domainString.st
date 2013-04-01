accessing
domainString

	| sz |
	^self isNamedHost ifTrue: [
		((sz := self name size) >= 2) ifTrue: [
			(self name at: (sz - 1)), '.', self name last.
		] ifFalse: [
			''
		]
	] ifFalse: [
		self nameString
	]