deprecated
setFocus
	"Makes this element have the initial focus once the page is loaded aka autofocus."
	self 
		greaseDeprecatedApi: 'WAFormInputTag>>#setFocus'
		details: 'Use an appropriate Javascript library instead.'.
	canvas document addLoadScript: 'document.getElementById(' , self ensureId printString , ').focus()'