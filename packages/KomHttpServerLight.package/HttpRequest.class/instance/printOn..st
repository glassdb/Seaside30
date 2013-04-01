printing
printOn: printStream
	printStream
		nextPutAll: self class name;
		nextPutAll: ' (URL=';
		nextPutAll: self url greaseString;
		nextPutAll: '; protocol=';
		nextPutAll: self protocol greaseString;
		nextPutAll: '; header=';
		nextPutAll: self header greaseString;
		nextPutAll: '; getFields=';
		nextPutAll: self getFields greaseString;
		nextPutAll: '; postFields=';
		nextPutAll: self postFields greaseString;
		nextPutAll: ')'