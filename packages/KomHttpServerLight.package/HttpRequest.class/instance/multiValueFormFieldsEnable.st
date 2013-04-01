accessing
multiValueFormFieldsEnable
	"enable use of multi-value form fields"

	"thus, if the status changed, need to expunge GET/POST fields if already parsed"

	self multiValueFormFields
		ifTrue: [ ^ self ].
	self propertyAt: #multiValueFormFields put: true.
	self removePropertyAt: #getFields ifAbsent: [  ].
	self removePropertyAt: #postFields ifAbsent: [  ]