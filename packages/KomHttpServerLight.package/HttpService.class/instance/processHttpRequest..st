serving
processHttpRequest: anHttpRequest
	"Subclasses can override this method and answer an instance of an 
	HttpResponse.  Alternatively, if we have a plug (typically a BlockContext
	or a MessageSend), then invoke it."

	plug ifNotNil: [^plug processHttpRequest: anHttpRequest].
	^self subclassResponsibility
