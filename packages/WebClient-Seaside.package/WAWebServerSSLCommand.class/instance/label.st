accessing
label

	^target adaptor isSSLEnabled
		ifTrue:['<on>Use SSL (https)']
		ifFalse:['<off>Use SSL (https) ...']
