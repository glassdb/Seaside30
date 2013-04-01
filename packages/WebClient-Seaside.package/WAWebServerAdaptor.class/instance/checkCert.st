ssl
checkCert
	"Check if the current cert is valid by performing an SSL handshake"

	Smalltalk at: #SqueakSSL ifPresent:[:sqSSL|
		[sqSSL checkCert: certName] on: Error do:[:ex|
			(UIManager default confirm:
				'The verification of the certificate failed with an error:', 
				String cr, String cr, ex description, String cr, String cr,
				'Do you still want to use this certificate?') ifFalse:[^false].
		].
	].

	^true