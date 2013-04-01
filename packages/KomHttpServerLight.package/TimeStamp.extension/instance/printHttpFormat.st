*komhttpserverlight
printHttpFormat

	^String streamContents: [ :strm | self printHttpFormatOn: strm]