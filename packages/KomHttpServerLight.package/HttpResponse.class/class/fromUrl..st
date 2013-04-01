instance creation
fromUrl: aUrl
	^self basicNew
		status: #tempMoved;
		fieldAt: 'Location' put: aUrl asString;
		contentType: MIMEDocument contentTypeHtml;
		contents: (ReadStream on: '<head><title>Object moved</title></head>
<body><h1>Object Moved</h1>This object may be found <a HREF="', aUrl asString,'">here</a>.</body>');
		yourself