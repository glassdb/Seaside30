deprecated
submitFormNamed: aString 
	"Submits a form with the id aString."
	self 
		greaseDeprecatedApi: 'WAAnchorTag>>#submitFormNamed:'
		details: 'Use a dedicated Javascript library instead.'.
	self onClick: 'document.getElementById(' , aString printString , ').submit()'