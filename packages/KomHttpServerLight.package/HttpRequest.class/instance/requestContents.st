accessing
requestContents
	self isPostRequest ifTrue: [^ self postContents ].
	self isPutRequest ifTrue: [^ self putContents].
	"We should never get here"
	^ ''