snapshots
shutDown

	self services do: 
		[ :ea | ea prepareForShutdown]