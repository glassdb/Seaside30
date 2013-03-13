converting
requestBodyFor: aZincRequest
	^ (aZincRequest method = #POST 
		and: [ aZincRequest hasEntity
			and: [ aZincRequest entity isEmpty not
				and: [ aZincRequest entity contentType ~= ZnMimeType applicationFormUrlEncoded
					and: [ aZincRequest entity contentType ~= ZnMimeType multiPartFormData ] ] ] ])
			ifTrue: [
				String streamContents: [ :stream | 
					aZincRequest entity writeOn: (ZnBivalentWriteStream on: stream) ] ]
			ifFalse: [
				String new ]