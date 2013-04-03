initialization
initializePorts: aString 
	self ports: ((aString subStrings: ',') collect: [ :each | each greaseInteger ])