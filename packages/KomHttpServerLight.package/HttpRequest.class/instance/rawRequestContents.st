accessing
rawRequestContents
	self isPostRequest ifTrue: [^ self rawPostContents ].
	self isPutRequest ifTrue: [^ self rawPutContents].
	"We should never get here"
	^ ''