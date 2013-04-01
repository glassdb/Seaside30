running
runWhile: aBlock
	"subclasses should perform whatever service they provide
	in a loop that doesn't return until aBlock evaluates to true"

	"In this abstract class, we do nothing except wait on a 
	timer.  This is useful during development where we might
	want to create some do nothing services for testing purposes."

	"The two examples below illustrate the difference in using
	the #sleepFor: method and directly using a Delay.  If you 
	use the #sleepFor: method, then stopping the service will
	happen immediately while the service is sleeping; if you
	just use a Delay directly, then graceful shutdown cannot
	happen until after the delay completes.  To test this behavior
	start a service using Service newNamed: 'sleep test' 
	and then use the Star Browser interface to start and stop the service
	(note: you can allow graceful termination during any block of 
	code using Process class>>terminationOkDuring:)."

	[aBlock value] whileTrue: [self sleepFor: 1000]
	"[aBlock value] whileTrue: [(Delay forSeconds: 10) wait]"