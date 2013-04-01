error handling
detailedErrorResponseStatus: aSymbol exception: anException 
	^self errorResponseStatus: aSymbol
		description: '<pre><b>' , anException description , '</b><br><br>' 
				, anException signalerContext longStack , '</pre>'