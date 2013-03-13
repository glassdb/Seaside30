deprecated
urlForRequestHandler: aRequestHandler addHandlerField: aBoolean 
	| key url |
	self 
		greaseDeprecatedApi: 'WARegistry>>#urlForRequestHandler:addHandlerField:'
		details: 'Use #urlFor: or #urlFor:ifAbsent:. In any case where you do not want the handler field, simply use #url.'.
	key := self ensureKeyForHandler: aRequestHandler.
	url := self url.
	aBoolean ifTrue: 
		[ url 
			addField: self keyField
			value: key ].
	^ url