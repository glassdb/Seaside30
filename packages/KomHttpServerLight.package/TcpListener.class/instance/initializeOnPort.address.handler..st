initialization
initializeOnPort: aPort address: anAddress handler: aValuableObject 
	self 
		initializeOnPort: aPort
		handler: aValuableObject.
	anAddress ifNotNil: [self address: anAddress]