private
processTerminated
	"Private.  Nils out the process inst var (indication that the service is
	stopped and signals any processes that are waiting on the service to 
	stop."

	process := nil.
	self releaseProcessesWaitingForStop.
