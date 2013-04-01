responding
pvtWriteCookiesOn: aStream 

	self cookies
		do: [:cookie | aStream nextPutAll: 'Set-Cookie: ';
				 nextPutAll: cookie;
				 nextPutAll: String crlf]