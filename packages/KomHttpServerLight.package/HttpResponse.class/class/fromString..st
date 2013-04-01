instance creation
fromString: aString

	^self basicNew
		status: #ok;
		"fieldAt: 'Cache-Control' put: 'max-age=86400';"
		contentType: MIMEDocument contentTypeHtml;
		contents: (ReadStream on: aString);
		yourself