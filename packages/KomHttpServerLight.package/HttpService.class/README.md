I am a comanche service that listens for inbound HTTP connectinos on a given port.

Usage:

Subclasses should override the #processHttpRequest: method to process incoming HTTP requests (an HttpRequest is passed as the sole argument to this method).  The #processHttpRequest: method should always answer an instance of an HttpResponse.  Starting and stopping instances of this class will start and stop listening on the given port number.  You may also use instances of this class in a pluggable manner rather than subclassing (see examples below).

Instance Variables:

plug - An object that responds to the message #threadSafeValue: (typically a BlockContext or a MessageSend).  If this variable is not nil, then the default implementation of #processHttpRequest: will send #threadSafeValue: to this object and answer the result.  This enables ComancheHttpService to be used in a pluggable manner.  

Pluggable Examples (MessageSend):

	(HttpService on: 8080 named: 'Example Http Service')
		onRequestDispatch: #processRequest: to: SomeGlobal;
		start

Pluggable Examples (BlockContext):

	(HttpService on: 8080 named: 'Example Http Service')
		onRequestDo: [ :httpRequest | SomeGlobal processRequest: httpRequest ];
		start
