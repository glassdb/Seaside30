rendering
profile: aBlock
	| result |
	self startProfiling.
	result := self runProfilerOn: aBlock.
	self endProfiling.
	^ result