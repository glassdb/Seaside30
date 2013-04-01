multipart forms
multipartFormFieldsDo: aBlock
	"USAGE:
	request multipartFormFieldsDo: [:chunk |
		chunk saveToStream: aStream]."
	"NOTE: if the chunk is not saved, save it after aBlock"

	self isPostMultipart
		ifFalse: [ ^nil ].
	stream peekForAll: self multipartBoundary.
	[ stream atEnd or: [ stream peekForAll: '--' ] ] whileFalse: [
		| mChunk |
		stream next: 2.  "Advance over CRLF"
		mChunk := self nextChunkHeader.
		aBlock value: mChunk.
		mChunk isSaved ifFalse: [
			mChunk fileName isEmptyOrNil
				ifFalse: [ mChunk saveToStream: (DummyStream on: String new)]
				ifTrue: [
					| aFieldValue |
					aFieldValue := String streamContents: [ :aStream |
						mChunk saveToStream: aStream ].
					self postFields at: mChunk fieldName put: aFieldValue ] ] ].
	stream next: 2 "Advance over CRLF"