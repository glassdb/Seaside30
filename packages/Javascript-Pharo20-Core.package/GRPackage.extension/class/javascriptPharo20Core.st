*javascript-pharo20-core
javascriptPharo20Core
	^ self new
		name: 'Javascript-Pharo-Core';
		addDependency: 'Javascript-Core';
		addDependency: 'Seaside-Pharo20-Core';
		url: #seasideUrl;
		yourself