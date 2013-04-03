private
checkForDuplicates: aCollectionOfWorkingCopies
	| context |
	context := WAUuidDuplicateContext new.
	aCollectionOfWorkingCopies do: [ :workingCopy |
		 workingCopy ancestors do: [ :each |
			self checkAncestorsOf: each context: context ] ].
	^ context duplicates