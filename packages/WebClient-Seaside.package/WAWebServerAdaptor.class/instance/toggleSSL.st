ssl
toggleSSL
	"Toggle SSL/TLS support"

	certName ifNotNil:[
		certName := nil.
		server ifNotNil:[server certName: nil].
		^self].

	[certName := (UIManager default request:
		'To use SSL, you need to have a suitable certificate.', String cr,
		(Smalltalk platformName = 'unix'
			ifTrue:['Please enter the full path to the .PEM file below:']
			ifFalse:['Please enter the name of the certificate below:'])) ifEmpty:[^self].
	certName isEmpty or:[self checkCert]] whileFalse:[certName := nil].

	server ifNotNil:[server certName: certName].
