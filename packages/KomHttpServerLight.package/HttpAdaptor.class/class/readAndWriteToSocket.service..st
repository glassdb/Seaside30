instance creation
readAndWriteToSocket: aSocket service: httpService
	"Wrap the socket in a suitable SocketStream implementation
	using appropriate options for timeout etc and start the conversation."

	^self 
		readAndWriteTo: 
			((self socketStream on: aSocket)
				timeout: self dataTimeout;
				autoFlush: false;
				yourself)
		service: httpService