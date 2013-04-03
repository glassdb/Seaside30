convenience
search: aSearchBlock labels: aLabelsBlock callback: aCallbackBlock
	"A one argument block aSearchBlock that will be evaluated with the term the user currently typed. The block is expected to answer a collection of objects. aLabelsBlock should answer a string label to be displayed for each object. aCallbackBlock is evaluated with the selected object and an ajax script to be performed."
	
	| term mapping |
	mapping := IdentityDictionary new.
	term := Array new: 1. "In GS, we cannot assign to a temp, so we create a valueholder"
	self source: ((self jQuery getJson
		callback: [ :value | term at: 1 put: value ]
		value: (JSStream on: 'request.term');
		text: [ :stream | 
			stream json: ((aSearchBlock value: (term at: 1)) asArray collect: [ :object | 
				GRSmallDictionary new
					at: 'label' put: (aLabelsBlock value: object);
					at: 'index' put: (mapping at: object ifAbsentPut: [ mapping size + 1 ]);
					yourself ]) ];
		onSuccess: 'response(arguments[0])'; 
		dataType: 'jsonp') asFunction: #('request' 'response')).
	self onSelect: ((self jQuery ajax
		callback: [ :value | term at: 1 put: value greaseInteger ] 
		value: (JSStream on: 'ui.item.index');
		script: [ :script |
			mapping keysAndValuesDo: [ :object :value |
				value = (term at: 1)
					ifTrue: [ aCallbackBlock value: object value: script ] ] ])
		asFunction: #('event' 'ui'))