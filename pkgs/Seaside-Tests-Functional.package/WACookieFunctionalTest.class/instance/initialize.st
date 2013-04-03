initialization
initialize
	super initialize.
	self firstPath: self application url pathString.
	self secondPath: self application url pathString.