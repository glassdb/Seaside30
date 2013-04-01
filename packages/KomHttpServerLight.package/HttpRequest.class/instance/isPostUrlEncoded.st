testing
isPostUrlEncoded
	"Is this request a POST with multipart form data?"

	^self isPostRequest and: [ self contentType = MIMEDocument contentTypeFormData ]