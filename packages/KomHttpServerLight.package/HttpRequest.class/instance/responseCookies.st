response cookies
responseCookies
	"cookies that need to be set"
	^self propertyAt: #responseCookies ifAbsentPut: [OrderedCollection new]