deprecated
confirm: aString 
	self 
		greaseDeprecatedApi: 'WATagBrush>>#confirm:'
		details: 'Use a dedicated Javascript library instead.'.
	self onClick: 'return confirm(' , aString printString , ')'