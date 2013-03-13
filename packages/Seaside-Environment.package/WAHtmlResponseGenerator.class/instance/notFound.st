generation
notFound
	self response
		notFound;
		contentType: WAMimeType textHtml;
		nextPutAll: (WAHtmlCanvas builder
			fullDocument: true;
			rootBlock: [ :root | root title: 'Not Found' ];
			render: [ :html |
				html heading: [
					html text: 'Error: "'.
					html text: self request url pathString.
					html text: '" not found' ] ])