deprecated
call: aString arguments: anArray 
	"Call the method named aString with aCollection as its arguments."

	self greaseDeprecatedApi: 'JSObject>>#call:arguments:' details: 'Use #call:withArguments:.'.
	self call: aString withArguments: anArray