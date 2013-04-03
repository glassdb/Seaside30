public
with: aBlock
	self onClick: 'window.open(this.href,' , self name printString , ',' , self featureString printString , ');return false'.
	super with: aBlock