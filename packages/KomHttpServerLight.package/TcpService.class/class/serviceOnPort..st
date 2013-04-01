accessing
serviceOnPort: portNumber
	^ self serviceOnPort: portNumber
		ifAbsent: [self error: 'No service on that port']