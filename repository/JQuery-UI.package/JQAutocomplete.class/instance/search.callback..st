convenience
search: aSearchBlock callback: aCallbackBlock
	self search: aSearchBlock labels: [ :each | each asString ] callback: aCallbackBlock