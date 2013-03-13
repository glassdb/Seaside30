updating
updateRoot: anHtmlRoot
	anHtmlRoot meta contentType: self application contentType.
	anHtmlRoot meta contentScriptType: WAMimeType textJavascript.
	anHtmlRoot htmlAttributes
		at: 'xmlns' put: 'http://www.w3.org/1999/xhtml';
		at: 'xml:lang' put: 'en';
		at: 'lang' put: 'en'.
	anHtmlRoot beXhtml10Strict.
	anHtmlRoot title: 'Seaside'.
	self application libraries 
		do: [ :each | each default updateRoot: anHtmlRoot ].
	self session updateRoot: anHtmlRoot