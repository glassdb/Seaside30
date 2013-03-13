rendering
renderPartsOn: html
	self renderHaltOn: html.
	self renderErrorOn: html.
	self renderRenderErrorOn: html.
	self renderResumableErrorOn: html.
	self renderWarningOn: html.
	self renderDeprecatedOn: html