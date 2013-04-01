comanche processing
asHttpPartialResponseBlock: aBlock
	^(self as: HttpPartialResponse)
		producerBlock: aBlock;
		yourself