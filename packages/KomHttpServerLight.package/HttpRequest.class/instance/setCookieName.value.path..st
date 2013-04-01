response cookies
setCookieName: nameString value: valueString path: pathString 
	"set a cookie in the Response"
	self
		setCookieName: nameString
		value: valueString
		expiresDate: nil
		expiresTime: nil
		path: pathString
		domain: nil
		secure: nil