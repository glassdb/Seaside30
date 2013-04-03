accessing
contents
	"Answer a String"
	self
		greaseDeprecatedApi: 'WAFile>>#contents'
		details: 'Use #rawContents, #contentsDecoded or #contentsDecodedUsing: instead.'.
	^ self contentsDecodedUsing: 'ISO-8859-1'