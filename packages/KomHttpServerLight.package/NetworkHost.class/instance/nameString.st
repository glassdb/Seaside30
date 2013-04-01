accessing
nameString
	^ String streamContents: [ :str |
			self name do: [:nm | str nextPutAll: nm printString] separatedBy: [str nextPut: $.] ]
