instance creation
fromString: aString contentType: contentTypeString

	^self basicNew
		status: #ok;
		"fieldAt: 'Cache-Control' put: 'max-age=86400';"
		contentType: contentTypeString;
		contents: (ReadStream on: aString);
		yourself