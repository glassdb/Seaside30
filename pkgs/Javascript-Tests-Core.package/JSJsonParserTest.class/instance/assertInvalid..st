utilities
assertInvalid: aString
	self should: [ self parse: aString ] raise: JSJsonSyntaxError