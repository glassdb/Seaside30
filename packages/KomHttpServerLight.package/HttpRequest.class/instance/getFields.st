accessing
getFields
	"retrieve fields encoded in the URL: http://aha/ha?a=1&b=2"
	| in |
	^self propertyAt: #getFields ifAbsentPut: [
		((in := rawUrl indexOf: $?) > 0) ifTrue: [
			self class decodeUrlEncodedForm: 
				(rawUrl copyFrom: (in + 1) to: rawUrl size)
				multipleValues: self multiValueFormFields
		] ifFalse: [
			self multiValueFormFields
				ifTrue: [HttpFormDictionary new]
				ifFalse: [Dictionary new].
		].
	]