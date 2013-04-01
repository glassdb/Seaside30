private
forkAndListenWhile: aBlock

	[self listenWhile: aBlock] fork
