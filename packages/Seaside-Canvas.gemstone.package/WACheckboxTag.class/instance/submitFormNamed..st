deprecated
submitFormNamed: aString 
	self 
		greaseDeprecatedApi: 'WACheckboxTag>>#submitFormNamed:'
		details: 'Use a dedicated Javascript library instead.'.
	self onClick: 'document.getElementById(' , aString printString , ').submit();return false;'