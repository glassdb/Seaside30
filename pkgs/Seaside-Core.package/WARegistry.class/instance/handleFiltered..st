handling
handleFiltered: aRequestContext
	| cookie key handler urlKey |
	urlKey := self urlKeyFromContext: aRequestContext ifAbsent: [ nil ].
	cookie := self useCookies
		ifFalse: [ nil ]
		ifTrue: [ self cookieFromContext: aRequestContext ifAbsent: [ nil ] ].
	key := self keyFromFieldValue: urlKey cookie: cookie.
	key isNil
		ifTrue: [ self handleDefault: aRequestContext ]
		ifFalse: [
			handler := self cache at: key ifAbsent: [ nil ].
			handler isNil
				ifTrue: [
					cookie notNil ifTrue: [ self addDeletionOfCookie: cookie to: aRequestContext ].
					self handleExpired: aRequestContext ]
				ifFalse: [
					((self doesHandlerSupportCookies: handler) and: [ (cookie isNil or: [ (cookie value = key) not ]) and: [ self useCookies ] ])
						ifTrue: [ self addCookieForHandler: handler to: aRequestContext ] ].
					self handleKeyed: aRequestContext with: handler ]