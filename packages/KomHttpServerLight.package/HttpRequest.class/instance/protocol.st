accessing
protocol
	^self propertyAt: #protocol ifAbsent: [self defaultProtocol]