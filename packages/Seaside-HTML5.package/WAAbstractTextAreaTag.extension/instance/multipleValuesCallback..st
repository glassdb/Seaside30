*seaside-html5
multipleValuesCallback: aBlock
	self beMultiple.
	self name: (self storeCallback: (self allValuesCallbackClass on: aBlock)).
	self value: self value