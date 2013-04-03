private
uuidSet
	^ PluggableSet new
		equalBlock: [ :a :b | a name = b name ];
		hashBlock: [ :a | a name hash ];
		yourself