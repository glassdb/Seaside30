accessing
host
	^self propertyAt: #host ifAbsentPut: [self header at: 'host' ifAbsent: []]