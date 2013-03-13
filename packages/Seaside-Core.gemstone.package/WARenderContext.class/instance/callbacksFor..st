deprecated
callbacksFor: anObject 
	self 
		greaseDeprecatedApi: 'WARenderContext>>#callbacksFor:'
		details: 'Use #callbacks. Callbacks are no longer evaluated in the context of an owning object.'.
	^ self callbacks