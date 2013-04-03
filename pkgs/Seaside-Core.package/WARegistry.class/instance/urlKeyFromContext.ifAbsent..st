handling-helpers
urlKeyFromContext: aRequestContext ifAbsent: absentBlock
	"Answer the key found in the request URL. If none is found, return the
	result of evaluating absentBlock."
	
	^ aRequestContext request at: self keyField ifAbsent: absentBlock