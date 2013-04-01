running
unassignPort

	PortAssignments at: self portNumber ifPresent: 
		[ :srv |
		srv == self ifTrue: 
			[PortAssignments removeKey: self portNumber]]

