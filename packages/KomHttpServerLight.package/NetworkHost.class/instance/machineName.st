accessing
machineName
	^(self isNamedHost and: [self name size >= 3]) 
		ifTrue: [self name first]
		ifFalse: [nil]