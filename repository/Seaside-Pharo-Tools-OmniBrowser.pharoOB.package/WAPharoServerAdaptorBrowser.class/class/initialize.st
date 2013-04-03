initialization
initialize
	Smalltalk at: #TheWorldMenu ifPresent: [ :class |
		class class methodDict at: #registerOpenCommand: ifPresent: [ :method |
			(method sendsSelector: #deprecated:) 
				ifFalse: [ class registerOpenCommand: (Array with: self title with: (Array with: self with: #open)) ] ] ]