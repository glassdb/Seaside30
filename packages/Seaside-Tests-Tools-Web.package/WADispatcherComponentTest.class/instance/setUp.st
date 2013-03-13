running
setUp
	super setUp.
	rootHandler := WADispatcher new.
	rootHandler := rootHandler register: WADispatcher new at: 'seaside'.
	childHandler := rootHandler register: WADispatcher new at: 'child'.
	configApplication := WAAdmin register: WAApplication 
		at: 'config'
		in: rootHandler.
	configApplication configuration addParent: WARenderLoopConfiguration instance.
	configApplication 
		preferenceAt: #rootClass
		put: WAConfigurationBrowser.
	normalApplication := WAAdmin register: WAApplication 
		at: 'counter'
		in: childHandler.
	normalApplication configuration addParent: WARenderLoopConfiguration instance.
	normalApplication 
		preferenceAt: #rootClass
		put: WAConfigurationBrowser