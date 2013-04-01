instance creation
readAndWriteTo: aStream service: httpService

	^self new
		initializeOn: aStream httpService: httpService;
		beginConversation;
		yourself