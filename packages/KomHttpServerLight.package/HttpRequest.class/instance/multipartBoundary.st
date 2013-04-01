multipart forms
multipartBoundary
	| str idx boundary |
	"boundary specification in the HTTP header looks like:
	Content-Type: multipart/form-data; boundary=BOUNDARY "
	boundary := 'boundary='.
	^self propertyAt: #multipartBoundary ifAbsentPut:
		[(self contentType beginsWith: MIMEDocument contentTypeMultipart)
			ifTrue: ["contentType gets lowercased, so access the raw header"
				str := header at: 'content-type' ifAbsent: [ '' ].
				idx := str indexOfSubCollection: boundary.
				'--', (str copyFrom: idx + boundary size to: str size)]
			ifFalse: [ nil ]]