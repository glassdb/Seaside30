accessing
saveToStream: outStream
	"This method is no longer dumb. It streams data chunk wise so it doesn't have to fit
	into memory all at once. Answers the number of bytes written to the stream.
	The logic for stripping 128 bytes from IE4/Mac is what makes it look complex."

	| boundary size firstBuffer origFileName |
	self setSavedFlag.
	origFileName := self fileName.
	boundary := String crlf, self multipartBoundary.
	size := 0.
	firstBuffer := ''.
	
	self stream 
		upToAll: boundary
		bufferSize: 1000000 do: [:buffer |
			firstBuffer
				ifNil: [
					size := size + buffer size.
					outStream nextPutAll: buffer]
				ifNotNil: [
					"IE4 for Mac appends 128 bytes of Mac file system info - must remove"
					firstBuffer := firstBuffer, buffer.
					firstBuffer size >= 128 ifTrue: [
						(firstBuffer first asciiValue = 0 and: 
							[firstBuffer second asciiValue = origFileName size 
								and: [(firstBuffer copyFrom: 3 to: origFileName size + 2) = origFileName]]) 
							ifTrue: [
								firstBuffer := firstBuffer copyFrom: 129 to: firstBuffer size].
						size := size + firstBuffer size.
						outStream nextPutAll: firstBuffer.
						firstBuffer := nil]]].

	firstBuffer ifNotNil: [
		size := size + firstBuffer size.
		outStream nextPutAll: firstBuffer].
	
	^ size