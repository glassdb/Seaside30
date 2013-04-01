starting and stopping
stop
	"Gracefully request the service to stop.  This method returns immediately.  If
	you wish to wait until the service has stopped, follow this method with #waitForStop
	or #waitForStopUntil:."

	stopSignal := OrderedCollection new.
	process ifNotNil: [process okToTerminate ifTrue: [process terminate]].
	process ifNil: [stopSignal := nil].