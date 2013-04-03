deprecated
addLoadScript: aString 
	self 
		greaseDeprecatedApi: 'WASession>>#addLoadScript:'
		details: 'Use WAHtmlDocument>>#addLoadScript:. For example: "html document addLoadScript:".'.

	"We don't have access to the Canvas here so we can't provide an implementation"
	self error: 'You can no longer call #addLoadScript: on WASession.'