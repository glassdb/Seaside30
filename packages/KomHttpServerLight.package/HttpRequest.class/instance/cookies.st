accessing
cookies
	"answer a dictionary with the cookies in the request"
	^ self
		propertyAt: #cookies
		ifAbsentPut: [self
				parseCookies: (self header
						at: 'cookie'
						ifAbsent: [''])]