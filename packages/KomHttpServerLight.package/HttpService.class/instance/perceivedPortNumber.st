configuration
perceivedPortNumber

	"Answer the port number as it is perceived by the client (which could
	be different from the port we are listening on if for example you are 
	using port forwarding rules to reach your server).  If there is no 
	current http request, fall back on the real port number that we are 
	listening on."

	^ self portNumber
