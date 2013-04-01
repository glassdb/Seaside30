accessing
statusCodeAndReason
	| tmp |

	tmp := StatusCodes at: self status.
	^tmp key, ' ', tmp value.