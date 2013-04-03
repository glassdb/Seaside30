*seaside-flow
redirectWithMessage: aString delay: aNumber 
	self respondAndContinue: [ :url | 
		self responseGenerator 
			refreshAfter: aNumber
			location: url
			message: aString ]