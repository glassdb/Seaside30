creational
createRoot
	^ self rootDecorationClasses
		inject: self rootClass new
		into: [ :component :decorationClass |
			component 
				addDecoration: decorationClass new;
				yourself ]