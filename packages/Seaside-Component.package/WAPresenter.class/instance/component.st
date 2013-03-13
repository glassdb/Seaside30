deprecated
component
	"Many subclasses of WAComponent seem to have used #component to mean something different."
	self 
		greaseDeprecatedApi: 'WAPresenter>>#component'
		details: 'Use WAPresenter>>#decoratedComponent.'.
	^ self decoratedComponent