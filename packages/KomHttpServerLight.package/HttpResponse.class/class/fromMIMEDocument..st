instance creation
fromMIMEDocument: aMIMEDoc
	| content |
	content := aMIMEDoc content.
	content isString ifTrue:
		[content := ReadStream on: content].
	^self basicNew
		status: #ok;
		"fieldAt: 'Cache-Control' put: 'max-age=86400';"
		contentType: aMIMEDoc contentType;
		contents: content;
		yourself

	