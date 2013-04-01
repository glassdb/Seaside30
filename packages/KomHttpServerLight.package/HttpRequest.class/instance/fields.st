accessing
fields
	"Answer the fields (post or get) for the given request"

	| tmp |
	^self propertyAt: #fields ifAbsentPut:
		[tmp := self getFields copy.
		self postFields associationsDo: [ :assn | tmp add: assn].
		tmp]
