configuration
serverHostName

	"Cache the host name (it can take several milliseconds to make this call
	on some platforms.  The cache value will be reset every time the image
	is started"

	^ServerHostName ifNil: [
		ServerHostName := (NetNameResolver 
			nameForAddress: NetNameResolver localHostAddress
			timeout: 5)
			ifNil: [ 'localhost' ] ]