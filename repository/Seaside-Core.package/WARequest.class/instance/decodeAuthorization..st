private
decodeAuthorization: aString 
	^ GRPlatform current base64Decode: (aString subStrings: ' ') last