instance creation
new

	^self basicNew
		status: #ok;
		"fieldAt: 'Cache-Control' put: 'max-age=86400';"
		contentType: MIMEDocument contentTypeHtml;
		contents: (ReadStream on: 'This is a simple HttpResponse');
		yourself