private
percent: aDecimal
	^ (aDecimal * 100 roundTo: 0.1) printString , '%'