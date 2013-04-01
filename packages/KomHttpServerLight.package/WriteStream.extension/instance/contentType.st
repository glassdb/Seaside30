*komhttpserverlight
contentType

	self flag: #svp.
	"SVP: We should not be assuming that all write streams contain html content.  This needs to be fixed."

	^'text/html' asMIMEType