accessing
localPort
	"Answer the address of the request originator"

	^self propertyAt: #localPort
		ifAbsentPut: 
			[stream socket localPort]
