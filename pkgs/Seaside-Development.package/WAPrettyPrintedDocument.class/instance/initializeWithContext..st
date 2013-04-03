initialization
initializeWithContext: aRenderContext
	self initializeWithStream: aRenderContext document stream codec: self requestContext codec.
	xmlEncoder := WAXmlEncoder on: (singleEncoder := xmlEncoder).
	html := WAHtmlCanvas context: aRenderContext.
	indentCloseTags := OrderedCollection with: false.
	indentLevel := 0.
	firstLine := true