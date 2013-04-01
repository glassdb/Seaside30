accessing
initializeServerType
	"self initializeServerType"

	ServerType := String streamContents: 
					[:s | 
					s nextPutAll: self serviceName.
					s nextPutAll: '/'.
					s nextPutAll: self version.
					s nextPutAll: ' ('.
					s nextPutAll: self platform.
					s nextPutAll: ') ' ]