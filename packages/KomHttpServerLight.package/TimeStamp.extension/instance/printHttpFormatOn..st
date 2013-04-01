*komhttpserverlight
printHttpFormatOn: aStream
	"Print receiver's date and time on aStream in HTTP format;
	'<day>, DD <mth> YYYY HH:MM:SS GMT' ->	'Thu, 01 Dec 1994 16:00:00 GMT'
	"
	
	| d t |
	d := self date.
	t := self time.
	aStream nextPutAll: (d weekday copyFrom: 1 to: 3).
	aStream nextPutAll: ', '.
	d printOn: aStream format: #(1 2 3 $  2 1 2).
	aStream nextPut: $ .
	t print24: true on: aStream.
	aStream nextPutAll: ' GMT'.