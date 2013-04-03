private
withNotificationHandlerDo: aBlock
	| currentHandler |
	currentHandler := WACurrentExceptionHandler value.
	"For platforms with ANSI exceptions we have to nest exception handlers
	
	with ANSI exceptions
	When signaling an exception from an exception handler block the look up of
	the new exception handler starts in the exception handler block.
	
	without ANSI exceptions
	When signaling an exception from an exception handler block the look up of
	the new exception handler starts where the original exception was signaled.
	
	platforms without ANSI exceptions: Pharo, Squeak, GemStone 2.x
	platforms with ANSI exception: VAST, VW, GemStone 3.x"
	^ [ currentHandler handleExceptionsDuring: aBlock ]
		on: WARenderNotification
		 do: [ :n | ]