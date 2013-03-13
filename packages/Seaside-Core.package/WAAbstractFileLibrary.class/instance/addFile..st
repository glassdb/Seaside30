actions
addFile: aFile 
	"adds a file to the receiver

	aFile an instance of of WAFile"
	| contents |
	aFile isNil ifTrue: [
		"in case no file was selected for uploading"
		^ self ].
	contents := (self class isBinary: aFile fileName) 
		ifTrue: [ aFile rawContents ]
		ifFalse: [
			"#contents is deprecated, we shouldn't send it"
			GRPlatform current convertToSmalltalkNewlines: aFile contents ].
	self class 
		addFileNamed: aFile fileName
		contents: contents