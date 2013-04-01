converting
requestUrlFor: webRequest
	"Answers a WAUrl from the given request"

	| fullUrl scheme host |
	scheme := server certName ifNil:['http'] ifNotNil:['https'].
	host := webRequest headerAt: 'host'.
	fullUrl := scheme, '://', host, '/', webRequest rawUrl.
	^(WAUrl absolute: fullUrl)
		decodedWith: self codec