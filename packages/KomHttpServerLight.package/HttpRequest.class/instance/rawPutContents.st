accessing
rawPutContents
	"save the PUT contents as is, for future processing"
	
	^self propertyAt: #rawPutFields ifAbsentPut: [

		self isPutRequest
			ifTrue: [ stream next: self contentLength ]
			ifFalse: [ '' ] ]