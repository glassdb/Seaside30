accessing
rawPostFields
	"save the POST form fields as is, for future processing, see #postFields"
	"reasons:
		1) lazy form processing;
		2) allow the app to specify whether it wants multiple values for fields"

	^self propertyAt: #rawPostFields ifAbsentPut: [
		(self isPostRequest and: [ self isPostMultipart not ])
			"multipart decoding does not use #rawPostFields so we must not fetch the data from the socket here"
			ifTrue: [ stream next: self contentLength ]
			ifFalse: [ '' ] ]