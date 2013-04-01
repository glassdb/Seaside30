I listen for TCP connections on a given port number.  

Instance variables:

	portNumber - the number of the port on which to listen for incoming connections

	handler - an object that is sent the #value: message whenever an incoming connection is established; the argument to this message is a connected socket

	socketsToDestroy - a list of sockets that need to be destroyed (usually a listening socket that is no longer needed)

Usage:

In the following example, a TcpListener is established on port 8123.  After evaluating the following example, if you open a transcript window and point a web browser to port 8123 of this machine (ie. http://localhost:8123/), you should see several http requests appear in the transcript.

	| count listener |
	count _ 0.
	listener _ TcpListener
		on: 8123
		handler: 
			[ :socket |
			count _ count + 1.
			Transcript show: socket getData.
			socket closeAndDestroy].
	listener forkAndListenWhile: [count < 5].

For an additional example of using TcpListener, see TcpService.
