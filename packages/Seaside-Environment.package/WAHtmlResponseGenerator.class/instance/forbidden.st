generation
forbidden
	self ifResetPossible: [
		self response
			forbidden;
			contentType: WAMimeType textHtml ].
	self response
		nextPutAll: (WAHtmlCanvas builder
			fullDocument: true;
			rootBlock: [ :root | root title: 'Forbidden' ];
			render: [ :html |
				html heading: [
					html text: 'Error: you are forbidden to access "'.
					html text: self request url pathString.
					html text: '"' ] ])