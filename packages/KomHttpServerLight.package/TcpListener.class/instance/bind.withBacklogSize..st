private
bind: listener withBacklogSize: backlogSize 
	address 
		ifNil: 
			[ listener 
				listenOn: portNumber
				backlogSize: backlogSize ]
		ifNotNil: 
			[ listener 
				listenOn: portNumber
				backlogSize: backlogSize
				interface: address ]