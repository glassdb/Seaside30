accessing
serviceOnPort: portNumber ifAbsent: aBlock
	^ self services
		detect: [:service | service portNumber = portNumber]
		ifNone: aBlock