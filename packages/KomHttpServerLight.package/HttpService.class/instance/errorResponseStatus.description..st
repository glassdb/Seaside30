error handling
errorResponseStatus: aSymbol description: aString

	^HttpResponse
		status: aSymbol
		contents: 
'<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>', (HttpResponse statusCodeFor: aSymbol), ' ', (HttpResponse statusDescriptionFor: aSymbol), '</title>
</head><body>
<h1>', (HttpResponse statusDescriptionFor: aSymbol),'</h1>
', aString, '<p>
<hr>
<address>', self serverDescription,'</address>
</body></html>'