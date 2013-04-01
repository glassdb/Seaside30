private
statusString
	^(
		certName ifNil:[''] ifNotNil:['SSL Certificate: ', certName, String cr]
	), super statusString