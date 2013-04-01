accessing
networkHost

	^self propertyAt: #networkHost ifAbsentPut: 
		[NetworkHost fromString: self host].

