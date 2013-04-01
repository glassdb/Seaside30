initialization
initializePortFromString: aString defaultPort: dPort 
	| in tmp |
	^(in := aString indexOf: $:) > 0 
		ifTrue: 
			[tmp := aString copyFrom: in + 1 to: aString size.
			port := tmp isPositiveInteger 
				ifTrue: [tmp asNumber]
				ifFalse: [dPort].
			aString copyFrom: 1 to: in - 1]
		ifFalse: 
			[port := dPort.
			aString]