error handling
isDeploymentMode

	^self isVerboseMode not and: [self isDebugMode not]