*seaside-flow
respondAndContinue: aBlock 
	^ GRPlatform current seasideSuspendFlowDo: [ :cc | 
		aBlock value: (self session actionUrlForContinuation: cc).
		self respond ]