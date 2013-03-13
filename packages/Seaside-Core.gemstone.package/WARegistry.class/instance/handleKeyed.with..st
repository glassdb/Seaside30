handling
handleKeyed: aRequestContext with: aRequestHandler
	"This method is called whenever a request is received with a key that matches
	a registered handler."
	
	self dispatch: aRequestContext to: aRequestHandler