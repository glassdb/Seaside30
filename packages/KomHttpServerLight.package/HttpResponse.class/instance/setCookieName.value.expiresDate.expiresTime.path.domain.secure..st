accessing-cookies
setCookieName: nameString value: valueString expiresDate: expiresDate expiresTime: expiresTime path: pathString domain: domainString secure: secureBoolean 
	"set a cookie in the Response"
	| temp |
	temp := String new writeStream.
	"NAME=VALUE"
	temp nextPutAll: nameString;
		 nextPut: $=;
		 nextPutAll: valueString.
	"; expires=Wdy, DD-Mon-YYYY HH:MM:SS GMT"
	(expiresDate notNil and:[ expiresTime notNil])
		ifTrue: [temp nextPutAll: '; expires=';
				 nextPutAll: expiresDate weekday;
				 nextPutAll: ', '.
			expiresDate printOn: temp format: #(1 2 3 $- 2 2 2 ).
			temp nextPutAll: ' ';
				 nextPutAll: expiresTime print24;
				 nextPutAll: ' GMT'].
	"; path=PATH"
	pathString notNil
		ifTrue: [temp nextPutAll: '; path=';
				 nextPutAll: pathString].
	"; domain=DOMAIN"
	domainString notNil
		ifTrue: [temp nextPutAll: '; domain=';
				 nextPutAll: domainString].
	"; secure"
	(secureBoolean notNil
			and: [secureBoolean])
		ifTrue: [temp nextPutAll: '; secure'].
	""
	self cookies add: temp contents