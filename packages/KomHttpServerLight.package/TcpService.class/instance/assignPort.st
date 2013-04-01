running
assignPort

	self verifyPortAvailability: self portNumber.
	PortAssignments at: self portNumber put: self.
