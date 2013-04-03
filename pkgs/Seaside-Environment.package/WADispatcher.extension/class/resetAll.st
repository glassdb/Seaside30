*seaside-environment
resetAll
	self 
		greaseDeprecatedApi: 'WADispatcher class>>#resetAll'
		details: 'Use WAEnvironment>>#reloadApplications.'.
	WAEnvironment reloadApplications