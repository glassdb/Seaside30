conversation
value: aSocket
	"This method is invoked by the TcpListener"

	[ self serve: aSocket ] newProcess
		name: (self name, ' connection');
		resume
