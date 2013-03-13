*seaside-tests-html5
seasideTestsHTML5
	^ self new
		name: 'Seaside-Tests-HTML5';
		description: 'Unit tests for the package Seaside-HTML5.';
		addDependency: 'Seaside-HTML5';
		addDependency: 'Seaside-Tests-Functional';
		url: #seasideUrl;
		yourself