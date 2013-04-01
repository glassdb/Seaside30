instance creation
redirectTo: url
	"Create a redirection response."

	^(HttpResponse
			status: #seeOther
			contents: 'Temporarily moved to: <A HREF="', url, '">', url, '</A>')
		fieldAt: 'Location' put: url;
		fieldAt: 'URI' put: url; yourself