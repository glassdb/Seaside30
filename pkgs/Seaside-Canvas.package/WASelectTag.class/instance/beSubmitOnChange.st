deprecated
beSubmitOnChange
	"Submit the form in the user selects a value."
	self 
		greaseDeprecatedApi: 'WASelectTag>>#beSubmitOnChange'
		details: 'Use a dedicated Javascript library instead.'.
	self onChange: 'submit()'