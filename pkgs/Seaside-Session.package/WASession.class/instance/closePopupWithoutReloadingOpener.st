deprecated
closePopupWithoutReloadingOpener
	self 
		greaseDeprecatedApi: 'WASession>>#closePopupWithoutReloadingOpener'
		details: 'Use WARequestContext>>#closeThisPopup.'.
	^ self requestContext closeThisPopup