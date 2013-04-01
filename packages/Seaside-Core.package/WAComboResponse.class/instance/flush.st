initialization
flush
	"Flush the receiver and send partial content"

	committed ifFalse: [ self commit ].

	"Write the partial content if any"
	self nextChunkPut: bufferedStream contents.
	bufferedStream reset