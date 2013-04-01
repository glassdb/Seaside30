user authentication
setUsername: aUsername
	"save the username in a cookie"
	"make it expire very far into the future"
	self
		setCookieName: #ComancheUsername
		value: aUsername
		expiresDate: (Date today addDays: 1000)
		expiresTime: Time now
		path: '/'
		domain: nil
		secure: nil