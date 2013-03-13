parent/child
ensureKeyFor: aRequestHandler
	"Ensure the request handler is registered and returns its key."
	
	^ self keyFor: aRequestHandler ifAbsent: [ self register: aRequestHandler ]