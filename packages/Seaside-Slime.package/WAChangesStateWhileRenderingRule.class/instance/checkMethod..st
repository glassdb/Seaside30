running
checkMethod: aContext 
	| matches vars |
	aContext isRenderingMethod 
		ifFalse: [ ^ self ].
	matches := matcher 
		executeTree: aContext parseTree
		initialAnswer: OrderedCollection new.
	matches isEmpty
		ifTrue: [ ^ self ].
	vars := aContext instVarNames.
	matches do: [ :each | 
		(vars includes: each name) ifTrue: [ 
			result 
				addClass: aContext selectedClass
				selector: aContext selector.
			result matcher 
				matches: each name , ' := ``@obj'
				do: [ :node :answer | 
					answer isNil 
						ifTrue: [ node ]
						ifFalse: [ answer ] ] ] ]