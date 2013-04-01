initialization
initialize
	self dataTimeout: 10.
	self keepAlive: false.
	self maxKeepAliveRequests: 100.
	self responseChunkSize: 131072