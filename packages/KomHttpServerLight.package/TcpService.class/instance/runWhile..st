running
runWhile: aBlock 
	| listener |
	[listener := TcpListener 
		on: self portNumber
		address: self address
		handler: self.
	listener listenWhile: aBlock ]
		ensure: [ self unassignPort ]