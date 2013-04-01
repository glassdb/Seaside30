testing
isPersistent
	| proto answer |

	self propertyAt: #persistentConnection ifPresent: [ :x | ^x ].
	proto := self protocol.

	"If we can't figure out the protocol, default to non-persistent connections"
	answer := false.

	"For HTTP/1.0, the default is non-persistent connections"
	proto = 'HTTP/1.0' ifTrue:
		[answer := (self header at: 'connection' ifAbsent: ['']) 
			asLowercase = 'keep-alive'].

	"For HTTP/1.1, the default is persistent connections"
	proto = 'HTTP/1.1' ifTrue:
		[answer := (self header at: 'connection' ifAbsent: ['']) 
			asLowercase ~= 'close'].

	self propertyAt: #persistentConnection put: answer.
	^answer
