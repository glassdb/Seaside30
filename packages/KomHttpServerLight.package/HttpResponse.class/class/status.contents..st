instance creation
status: aSymbol contents: aString

	^self basicNew
		status: aSymbol;
		contentType: MIMEDocument contentTypeHtml;
		contents: (ReadStream on: aString);
		yourself
