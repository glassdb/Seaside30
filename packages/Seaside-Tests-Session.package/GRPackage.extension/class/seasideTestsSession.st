*seaside-tests-session
seasideTestsSession
	^ self new
		name: 'Seaside-Tests-Session';
		description: 'Unit tests for the package Seaside-Session.';
		addDependency: 'Seaside-Session';
		addDependency: 'Seaside-Tests-Core';
		url: #seasideUrl;
		yourself