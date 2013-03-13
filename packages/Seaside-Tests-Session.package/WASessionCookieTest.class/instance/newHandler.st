private
newHandler
	^ WAApplication new
		preferenceAt: #useCookies put: true;
		preferenceAt: #serverHostname put: 'www.seaside.st';
		yourself