private
releaseProcessesWaitingForStop
	"Private.  Signals any processes that are waiting on the service to stop."

	| tmp |
	stopSignal ifNotNil: 
		[tmp := stopSignal.
		stopSignal := nil.
		tmp do: [ :ea | ea signal]].