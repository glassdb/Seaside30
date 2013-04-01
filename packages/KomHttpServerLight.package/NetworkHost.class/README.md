I am an abstaction of a network host (in DNS parlance) and port number.  I can abstract named or numbered host names (as allowed in a URI for example).

	NetworkHost fromString: 'www.yahoo.com:8080'
	NetworkHost fromString: '192.168.1.1:80'