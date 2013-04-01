authentication
setUsername: aUsername
	"save the username in a cookie"
	self
		setCookieName: #ComancheUsername
		value: aUsername
		path: '/'.

	self flag: #todo.
	"allow for multiple usernames"