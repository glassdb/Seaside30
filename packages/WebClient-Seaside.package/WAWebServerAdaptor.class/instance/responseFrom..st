converting
responseFrom: aRequestContext
	"Answer a native response from aRequestContext."

	| response |
	response := WebResponse new.
	response protocol: aRequestContext request version asString 
			code: aRequestContext response status.
	aRequestContext response headers keysAndValuesDo:[ :key :value | 
		response addHeader: key value: value greaseString.
	].
	aRequestContext response cookies do:[:cookie|
		response addHeader: 'set-cookie' value: cookie oldNetscapeString.
	].
	response content: aRequestContext response stream contents.
	^response