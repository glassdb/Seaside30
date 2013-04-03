registration
register: aComponentClass asApplicationAt: aString
	"Use this to programatically register a component as an application."
	| application |
	application := self register: WAApplication at: aString.
	self configureNewApplication: application.
	application preferenceAt: #rootClass put: aComponentClass.
	^ application