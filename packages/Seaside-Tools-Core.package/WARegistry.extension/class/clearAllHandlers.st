*seaside-tools-core
clearAllHandlers
	self 
		greaseDeprecatedApi: 'WARegistry class>>#clearAllHandlers'
		details: 'Use WAAdmin class>>#clearSessions instead.'.
	^ WAAdmin clearSessions