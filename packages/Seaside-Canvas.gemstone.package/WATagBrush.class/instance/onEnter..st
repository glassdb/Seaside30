convenience
onEnter: anObject 
	"If 'enter' is pressed"
	self 
		greaseDeprecatedApi: 'WATagBrush>>#onEnter:'
		details: 'Use a dedicated Javascript library instead.'.
	self onKeyPress: 'if((window.event ? window.event.keyCode : event.which) == 13){' , anObject greaseString , '; return false}; return true'