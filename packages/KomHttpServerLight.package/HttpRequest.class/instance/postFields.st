accessing
postFields
	"Answer the multipart fields for a post request (if in fact this is a
	POST request"

	^self propertyAt: #postFields ifAbsentPut: [
		" parse POST fields in the body of request, if it's standard form data "

		self isPostUrlEncoded
			ifTrue: [
				self class
					decodeUrlEncodedForm: self rawPostFields
					multipleValues: true ]
			ifFalse: [
				Dictionary new ] ]