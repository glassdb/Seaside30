private
pvtNewListener: backlogSize 
	"Create a new socket that listens on our port.  The backlog is how many simultaneous 
	connections to accept at the same time"
	| listener |
	listener := self socketClass newTCP.
	self socketsToDestroy add: listener.
	self 
		bind: listener
		withBacklogSize: backlogSize.
	^ listener