description
describeOn: config
	(config boolean: #useCookies)
		comment: 'Whether cookies should be generated and honoured for registry keys. Will fall back to URL if the client does not support cookies.';
		default: false.