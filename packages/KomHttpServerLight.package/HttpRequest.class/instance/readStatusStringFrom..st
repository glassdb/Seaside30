initialize-release
readStatusStringFrom: aStream
	"RFC 2068 says in section 4.1 (Message Types) that 'In the interest of
	robustness, servers SHOULD ignore any empty line(s) received where
	a Request-Line is expected', so we ignore any leading CR/LF's"
	
	| status |
	status := ''.
	[status isEmpty and: [aStream atEnd not]]
		whileTrue: [status := aStream upToAll: String crlf].
		
	^ status