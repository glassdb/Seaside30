private
encode: aCharacter on: aStream
	aCharacter = $" ifTrue: [ ^ aStream nextPutAll: '&quot;' ].
	aCharacter = $< ifTrue: [ ^ aStream nextPutAll: '&lt;' ].
	aCharacter = $& ifTrue: [ ^ aStream nextPutAll: '&amp;' ].
	aCharacter = $> ifTrue: [ ^ aStream nextPutAll: '&gt;' ].
	aStream nextPut: aCharacter