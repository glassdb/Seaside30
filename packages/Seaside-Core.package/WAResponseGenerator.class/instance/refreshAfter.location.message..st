generation
refreshAfter: aDuration location: aUrl message: aString 
	"Show aString for aDuration, then redirect to aUrl."
	self response
		contentType: WAMimeType textPlain;
		refreshAfter: aDuration
			location: aUrl
			message: aString , (String with: Character cr) , 'You are being redirected to ' , aUrl greaseString