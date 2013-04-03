handling-helpers
dispatch: aRequestContext to: aRequestHandler
	"This method is used by the handling methods to trigger the dispatch of a request
	to the specified handler."
	
	aRequestHandler handle: aRequestContext
