accessing
contentLength

	^self propertyAt: #contentLength ifAbsentPut: [
		(header at: 'content-length' ifAbsent: [0]) asNumber
	]