accessing
nextPutAll: aString 
	"uses #to:do: for speed reasons (on Pharo)
	this is not premature optimization, this is a hotspot method method
	and #to:do: shows measurable speed improvements for rendering seaside pages"
	1 to: aString size do: [ :index |
		| character value encoded |
		character := aString at: index.
		value := character greaseInteger.
		encoded := table at: value + 1.
		"Issue 482: use #notNil because it is faster than #isString because it is not actually sent"
		encoded notNil 
			ifTrue: [ stream nextPutAll: encoded ]
			ifFalse: [ stream nextPut: character ] ]