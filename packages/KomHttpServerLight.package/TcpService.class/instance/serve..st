conversation
serve: aSocket
	"Subclasses should override this method to provide socket based 
	communications services.  Each new socket connection is handed to
	this method."

	self subclassResponsibility
