socketstream
socketStream
	"Returns the correct class to use. If FastSocketStream is available we use it,
	otherwise we use SocketStream."

	^Smalltalk at: #FastSocketStream ifAbsent: [SocketStream]