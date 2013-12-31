accessing-dynamic
tree
	^ String streamContents: [ :stream | 
		self tally
			maxTabs: SmallInteger maxVal;
			maxClassNameSize: SmallInteger maxVal;
			maxClassPlusSelectorSize: SmallInteger maxVal;
			treePrintOn: stream 
			tabs: OrderedCollection new
			thisTab: String new
			total: tally tally
			totalTime: tally time
			tallyExact: true
			orThreshold: 2 ]