snapshots
startUp

	self services do: 
		[ :ea | ea prepareForStartup].
