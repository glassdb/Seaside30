user authentication
setUsername: aUsername password: aPassword
	"save the username/password in cookies"
	| pwHash |
	self setUsername: aUsername.
	pwHash := self hashPassword: aPassword.
	self
		setCookieName: #ComanchePassword
		value: pwHash asString
		expiresDate: (Date today addDays: 1000)
		expiresTime: Time now
		path: '/'
		domain: nil
		secure: nil