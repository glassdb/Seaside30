converting
responseFor: aNativeRequest
	"Answer a response object for aNativeRequest."

	^ WABufferedResponse on: (self codec encoderFor: (WriteStream on: String new))