testing
isStopped
	"Returns true if the WebServer instance is currently stopped"

	^server isNil or:[server isRunning not]