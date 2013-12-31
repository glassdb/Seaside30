public
runProfilerOn: aBlock
	tally := MessageTally new.
	tally reportOtherProcesses: false.
	^ tally spyEvery: 1 on: aBlock