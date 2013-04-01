initialization
initializeFromString: aString defaultPort: dPort

	| tmp |
	fullName := aString.
	tmp := self initializePortFromString: aString defaultPort: dPort.
	self initializeFromIPAddress: tmp.
	name ifNil: [
		name := tmp findTokens: '.'.
		type := #name.
	].

	