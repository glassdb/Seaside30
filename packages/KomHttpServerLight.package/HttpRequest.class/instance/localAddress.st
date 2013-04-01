accessing
localAddress
	"Answer the address of the request originator"

	^self propertyAt: #localAddress
		ifAbsentPut: 
			[stream socket localAddress]
