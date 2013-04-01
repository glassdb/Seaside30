configuration
serverDescriptionOn: strm

	strm nextPutAll: self serverType.
	strm nextPutAll: ' Server at '.
	strm nextPutAll: self perceivedHostName.
	strm nextPutAll: ' Port '.
	strm nextPutAll: self perceivedPortNumber asString.
