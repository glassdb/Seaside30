tools
graphFunctionalDependencies: functionalBool tests: testsBool
	"self graphFunctionalDependencies: true tests: true"

	| packages analyzer |
	packages := self allPackages
		collect: [ :each | PackageInfo named: each name ].
	testsBool 
		ifFalse: [ packages := packages reject: [ :each | each packageName includesSubString: '-Tests-' ] ].
	analyzer := (Smalltalk classNamed: #PDPackageAnalyzer) onPackages: packages.
	functionalBool ifTrue: [ 
		GRPackage packages 
			do: [ :package | 
				package dependencies do: [ :dep | 
					| source target |
					source := analyzer relation 
						packageNamed: package name
						ifAbsent: [ nil ].
					target := analyzer relation 
						packageNamed: dep name
						ifAbsent: [ nil ].
					(source notNil and: [ target notNil ]) ifTrue: [ 
						source add: ((Smalltalk classNamed: #PDFunctionalDependency) 
							from: source
							to: target) ] ] ]
			displayingProgress: 'Adding functional dependencies' ].
	analyzer save: 'seaside.dot'