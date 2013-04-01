startup and shutdown
prepareForStartup
	super prepareForStartup.
	ServerHostName := nil.
	self class initializeServerType.
	"this is necessary to make it start on cog images"
	process ifNotNil: [ :p |
		| list |
		list := p suspendingList.
		(list isKindOf: Semaphore)
			ifTrue: [ list signal ] ]