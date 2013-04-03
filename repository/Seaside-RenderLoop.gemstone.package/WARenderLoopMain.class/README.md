When a new session on a WAApplication is started WARenderLoopMain initializes the application, that is it:
 
	creates the top level component of the application, 
	informs each component(WAPresenter) of the application that the session started (via WAPresenter>>initialRequest:)
	starts a WARenderLoop to handle the request
