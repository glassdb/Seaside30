deprecated
closePopup
	self 
		greaseDeprecatedApi: 'WASession>>#closePopup'
		details: 'Use WARequestContext>>#closeThisPopupAndReloadOpener.'.
	^ self requestContext closeThisPopupAndReloadOpener