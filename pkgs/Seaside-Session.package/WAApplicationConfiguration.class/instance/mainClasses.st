description
mainClasses
	^ WAMain withAllSubclasses asSortedCollection: [ :a :b | a name <= b name ]