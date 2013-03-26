tests
testNoDuplicateUuids
	| duplicates workingCopies |
	workingCopies := WADevelopment allPackages collect: [ :each |
		 WADevelopment workingCopyFor: each ].
	duplicates := self checkForDuplicates: workingCopies.
	self assert: duplicates isEmpty