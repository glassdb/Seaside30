starting and stopping
start
	self verifyOkToStart
		ifFalse: [ ^ self ].
	process := [ [ self runWhile: [ stopSignal isNil and: [ process == Processor activeProcess ] ] ] ensure: [ self processTerminated ] ]
		newProcess.
	process
		name: self name;
		priority: self priority;
		resume