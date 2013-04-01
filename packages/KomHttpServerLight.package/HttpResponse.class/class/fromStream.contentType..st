instance creation
fromStream: aStream contentType: mimeTypeString

	^self basicNew
		status: #ok;
		"fieldAt: 'Expires' put: 'Thu, 15 Apr 2010 20:00:00 GMT';"
		"fieldAt: 'Cache-Control' put: 'max-age=86400';"
		contentType: mimeTypeString;
		contents: aStream;
		yourself

	