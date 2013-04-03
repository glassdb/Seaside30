*seaside-pharo-canvas
imageForm: aForm 
	self 
		greaseDeprecatedApi: 'WAHtmlCanvas>>#imageForm:'
		details: 'Use WAImageTag>>form:. For example: "html image form: myForm".'.
	self image form: aForm