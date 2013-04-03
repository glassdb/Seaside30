tests
testNoKey
	"There is no URL field and no cookie. This is a new request to the Registry."
	
	| response context |
	registry := self createRegistryWithCookiesEnabled.
	context := self createRequestContextWithFieldKey: nil cookieKey: nil.
	response := self dispatch: context to: registry.
	
	self assertNoCookies: response.
	self assertDefault: response