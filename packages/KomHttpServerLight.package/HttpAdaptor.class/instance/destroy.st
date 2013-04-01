processing
destroy

	[self stream close] 
		on: Error do: [ :ex | "ignore" ].
