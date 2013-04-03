convenience
sourceCallback: aOneArgumentBlock
	"A one argument block that will be evaluated with the term the user currently typed. The block is expected to answer a collection of objects."
	
	| term |
	term := Association new.
	self source: ((self jQuery getJson
		text: [ :stream | stream json: (aOneArgumentBlock value: term value) ];
		callback: [ :value | term value:  value ] value: (JSStream on: 'request.term');
		onSuccess: 'response(arguments[0])'; 
		dataType: 'jsonp') asFunction: #('request' 'response'))