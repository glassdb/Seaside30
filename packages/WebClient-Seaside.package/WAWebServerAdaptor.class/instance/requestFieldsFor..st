converting
requestFieldsFor: webRequest
	"Convert the post fields of the arguments into WARequestFields"

	| fields |
	fields := WARequestFields new.
	webRequest isPostRequest ifFalse:[^fields].
	(webRequest contentType copyUpTo: $;) caseOf: {
		['application/x-www-form-urlencoded'] -> [
			WebUtils 
				decodeUrlEncodedForm: webRequest content 
				do:[:key :value| fields at: key add: (self codec url decode: value)].
		].
		['multipart/form-data'] -> [
			WebUtils 
				decodeMultipartForm: webRequest content readStream 
				boundary: webRequest multipartBoundary 
				do:[:headers :params :content| 
					| key value filename mimetype |
					key := params at: 'name'.
					filename := params at: 'filename' ifAbsent:[nil].
					"Only used for file uploads so it's okay to default to 
					application/octet-stream even though rfc 2388 says 
					the default should be text/plain (for non-uploads)"
					mimetype := headers at: 'content-type' 
									ifAbsent:['application/octet-stream'].
					value := filename
						ifNil:[self codec url decode: content]
						ifNotNil:[
							(WAFile new)
								fileName: (self codec url decode: filename);
								contentType: (WAMimeType fromString: mimetype);
								contents: content asByteArray;
							yourself.
						].
					fields at: key add: value.
				].
		].
	} otherwise:[].
	^ fields