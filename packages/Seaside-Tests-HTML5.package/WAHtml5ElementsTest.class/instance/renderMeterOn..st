rendering
renderMeterOn: html
	html heading level2; with: '<meter>'.
	
	html meter: '75%'.
	html break.
	html meter: '3/4'.
	html break.
	html meter: '6 blocks used (out of 8 total)'.
	html break.
	html meter: 'max: 100; current: 75'.
	html break.
	html meter
		min: 0;
		max: 100;
		value: 75.