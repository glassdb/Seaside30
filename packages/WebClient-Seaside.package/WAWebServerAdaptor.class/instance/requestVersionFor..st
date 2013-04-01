converting
requestVersionFor: webRequest
	"Answers the WAHttpVersion from the request protocol"

	^ WAHttpVersion fromString: webRequest protocol