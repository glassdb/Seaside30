generation
authenticate: aString
	"Asks for authentication to the domain aString."

	self response basicAuthenticationRealm: aString