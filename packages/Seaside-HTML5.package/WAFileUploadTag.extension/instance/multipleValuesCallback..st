*seaside-html5
multipleValuesCallback: aBlock
	self beMultiple.
	self name: (self storeCallback: (WAAllUploadsCallback on: aBlock))