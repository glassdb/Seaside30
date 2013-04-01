authentication
setUsername: aUsername password: aPassword
	"save the username/password in cookies"
	| pwHash |
	self setUsername: aUsername.
	pwHash := self hashPassword: aPassword.
	self
		setCookieName: #ComanchePassword
		value: pwHash asString
		path: '/'.

	self flag: #todo.
	"allow for multiple usernames"