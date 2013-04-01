testing
isRunning
	"Returns true if the WebServer instance is currently running"

	^server notNil and:[server isRunning]