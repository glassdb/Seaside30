private
newListener: backlogSize
	"Create a new socket that listens on our port.  The backlog is how many simultaneous 
	connections to accept at the same time"

	[^self pvtNewListener: backlogSize] on: Error do: [].

	"Try one more time after initializing the network"
	Socket initializeNetwork.
	^self pvtNewListener: backlogSize.