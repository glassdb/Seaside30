initialize-release
initializeFrom: aDictionary
	| header str fileName fieldName idx contentType |
	"PRE: all keys in aDictionary are low-case"
	header := aDictionary.
	properties := Dictionary new.
self flag: #todo.
	"parse the header, pick out: filename, etc."

	str := (header at: 'content-disposition' ifAbsent: ['']).
	fileName := fieldName := ''.

	idx := str findString: 'filename='.
	idx > 0 ifTrue:
		[fileName := str copyFrom: idx + 10 to: (str indexOf: $" startingAt: idx+10) - 1].
	properties at: #fileName put: fileName.

	idx := str findString: 'name='.
	idx > 0 ifTrue:
		[fieldName := str copyFrom: idx + 6 to: (str indexOf: $" startingAt: idx+6) - 1].
	properties at: #fieldName put: fieldName.

	contentType := header at: 'content-type' ifAbsent: [MIMEDocument defaultContentType].
	properties at: #contentType put: contentType.

"Transcript show: 'field=', fieldName; cr; show: 'file=', fileName; cr;
	show: 'content-type=', contentType; cr."
