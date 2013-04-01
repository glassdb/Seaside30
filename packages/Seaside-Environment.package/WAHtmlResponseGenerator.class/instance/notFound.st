generation
notFound
	self ifResetPossible: [
		self response
			notFound;
			contentType: WAMimeType textHtml ].
	self response
		nextPutAll: (WAHtmlCanvas builder
			fullDocument: true;
			rootBlock: [ :root | root title: 'Not Found' ];
			render: [ :html |
				html heading: [
					html text: 'Error: "'.
					html text: self request url pathString.
					html text: '" not found' ] ])