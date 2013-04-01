multipart forms
nextChunkHeader
	"Read the next multipart data chunk's header"

	| string dict mChunk |
	string := stream upToAll: self endOfRequestHeaderMarker.
	dict := self class parseHttpHeader: string.
	mChunk := HttpMultipartChunk from: dict.
	mChunk stream: self stream.
	mChunk multipartBoundary: self multipartBoundary.
	^mChunk