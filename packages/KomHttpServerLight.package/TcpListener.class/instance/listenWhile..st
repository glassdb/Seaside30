private
listenWhile: aBlock
	"This is the listening loop.  It runs while aBlock evaluates
	to true.  When the loop terminates or when the process running
	the loop is terminated, any listening sockets will be destroyed."

	self socketClass initializeNetwork.
	[self pvtListenLoop: aBlock] ensure: [self destroySockets]
