private
checkAncestorsOf: aVersionInfo context: aDuplicateContext
	aDuplicateContext put: aVersionInfo.
	aVersionInfo ancestors isEmptyOrNil ifFalse: [
		aVersionInfo ancestors do: [ :each |
			self checkAncestorsOf: each context: aDuplicateContext ] ]