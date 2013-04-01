configuration
perceivedHostName
	"Answer the host name as perceived by the client.  If there
	is no current HttpRequest, fall back on the name as determined
	on the server."

	^ self serverHostName