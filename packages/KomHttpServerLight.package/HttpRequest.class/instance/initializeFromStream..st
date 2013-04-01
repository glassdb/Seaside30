initialize-release
initializeFromStream: aStream
	stream := aStream.
	self timestamp: Time totalSeconds.
	self readRequestHeaderFrom: stream.