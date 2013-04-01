starting and stopping
kill
	"Forcibly kill the service regardless of whether it is in a state where it is 
	safe to do so.  Use stop unless the service is not responding."

	process ifNotNil: [process terminate].
	self processTerminated.
