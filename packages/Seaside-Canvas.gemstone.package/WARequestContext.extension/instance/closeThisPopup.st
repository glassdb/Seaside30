*seaside-canvas
closeThisPopup
	^ self respond: [ :resp |
		resp 
			contentType: WAMimeType textHtml;
			nextPutAll: (WAHtmlCanvas builder
				fullDocument: true;
				rootBlock: [ :root | 
					root title: 'Seaside'; beXhtml10Strict.
					root htmlAttributes at: 'xmlns' put: 'http://www.w3.org/1999/xhtml' ];
				render: [ :html | html script: 'window.close();' ]) ]