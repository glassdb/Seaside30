deprecated
allDecorationsDo: aBlock 
	| ea |
	self 
		greaseDeprecatedApi: 'WAComponent>>#allDecorationsDo:'
		details: 'Use aComponent decorations do: [ :each | ... ].'.
	ea := self decoration.
	[ ea notNil and: [ ea ~~ self ] ] whileTrue: 
		[ aBlock value: ea.
		ea := ea next ]