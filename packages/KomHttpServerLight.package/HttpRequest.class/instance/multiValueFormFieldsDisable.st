accessing
multiValueFormFieldsDisable
	"disable use of multi-value form fields"

	"thus, if the status changed, need to expunge GET/POST fields if already parsed"

	self multiValueFormFields
		ifFalse: [ ^ self ].
	self propertyAt: #multiValueFormFields put: false.
	self removePropertyAt: #getFields ifAbsent: [  ].
	self removePropertyAt: #postFields ifAbsent: [  ]