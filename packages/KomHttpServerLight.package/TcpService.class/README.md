I am a KomHttpServer service that listens for inbound TCP connections on a given port.

Instance Variables:

	portNumber - the TCP port number on which to listen for inbound connections

Usage:

Subclasses should override the #serve: method to process incoming TCP connections (a connected socket is passed as the sole argument to this method).  Starting and stopping instances of this class will start and stop listening on the given port number.
