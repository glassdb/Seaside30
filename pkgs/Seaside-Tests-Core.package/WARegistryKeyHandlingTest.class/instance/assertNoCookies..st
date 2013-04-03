private
assertNoCookies: aResponse
	self assert: aResponse cookies size = 0.