actions
deployFiles
	"Write to disk the files that the receiver use to serve as methods.
	The files are stored in a subfolder named like the classname of the receiver in a subfolder of Smalltalk image folder."
	| pathSeparator |
	
	pathSeparator := GRPlatform current pathSeparator.
	GRPlatform current ensureExistenceOfFolder: self name.
	self fileSelectors do: [ :each | 
		| folder filename |
		filename := self asFilename: each.
		filename := filename replaceAll: '/' with: pathSeparator.
		folder := self name, pathSeparator, (filename copyUpToLast: pathSeparator first).
		GRPlatform current ensureExistenceOfFolder: folder.
		
		GRPlatform current 
			write: (self fileResourceOf: each) contents value
			toFile:  (GRPlatform current localNameOf: filename)
			inFolder: folder ]