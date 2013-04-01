processing
writeResponse: response for: request
	"<Boolean> Answer whether or not we succeeded in writing out the
	response.  If we did not, the caller may want to shut down this Http
	conversation.  We try to handle errors in writing the response by 
	getting and writing another response (note: this might not always work
	since the error could have occurred after some data has been written
	on the response stream).  For debugging, the method #handleResponseWritingError:
	can #pass on the exception to allow a walkback to appear."

	| errorResponse |
	[[request method = 'HEAD'
		ifTrue: [response writeHeadersOn: self writeStream]
		ifFalse: [response writeOn: self writeStream]]
			on: Error
			do: 
				[ :ex |
				errorResponse := self errorHandler handleResponseWritingError: ex.
				[errorResponse writeOn: self writeStream] on: Error do: [^false]].
	] ensure: [response destroy].
	^true
