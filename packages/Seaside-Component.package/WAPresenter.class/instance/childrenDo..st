iterating
childrenDo: aBlock
	| children |
	children := self children.
	children isCollection ifFalse: [
		WAChildrenNotCollectionError signal: self class name greaseString, ' >> #children is not answering a collection of components' ].
	children do: [ :each | 
		each isNil
			ifFalse: [ aBlock value: each ] ]