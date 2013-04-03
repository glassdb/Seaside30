initialization
initializeWithStream: aStream codec: aCodec
	super initializeWithStream: aStream codec: aCodec.
	xmlEncoder := WAXmlEncoder on: aStream.
	urlEncoder := WAUrlEncoder on: aStream codec: aCodec