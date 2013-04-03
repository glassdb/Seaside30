initialization
unload
	Smalltalk at: #TheWorldMenu ifPresent: [ :class |
		class class methodDict at: #unregisterOpenCommandWithReceiver: ifPresent: [ :method |
			(method sendsSelector: #deprecated:) 
				ifFalse: [ class unregisterOpenCommandWithReceiver: self ] ] ]