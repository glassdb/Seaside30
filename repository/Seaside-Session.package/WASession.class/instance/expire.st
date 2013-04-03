deprecated
expire
	self 
		greaseDeprecatedApi: 'WASession>>#expire'
		details: 'This method might be reimplemented again. In the meantime, if you just want to remove the Session from the Application, use WASession>>unregister (#unregistered will be called as a notification instead of #expired). Otherwise you should consider adding a Request Filter to the Session that implements whatever behaviour you want in order to block access to the Session.'.
	^ self unregister