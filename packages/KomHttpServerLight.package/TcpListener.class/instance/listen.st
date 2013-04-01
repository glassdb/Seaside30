private
listen
	"This is the listening loop.  It runs forever accepting
	inbound sockect connections."

	self listenWhile: [true]