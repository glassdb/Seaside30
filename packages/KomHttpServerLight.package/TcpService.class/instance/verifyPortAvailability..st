running
verifyPortAvailability: aNumber

	PortAssignments at: aNumber ifPresent: 
		[ :otherService | 
		self error: ('a service is already running on port ', self portNumber asString)].

