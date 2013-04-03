handling-helpers
addDeletionOfCookie: aCookie to: aRequestContext
	"Request the deletion of aCookie in the response."

	| baseUrl |
	baseUrl := self url.
	aRequestContext response
		deleteCookie: aCookie
		path: baseUrl pathString
		domain: baseUrl host