tests
testChildrenNotCollectionError
	"for background see: http://code.google.com/p/seaside/issues/detail?id=586"
	root onChildren: [ ^ Array with: child4 ].
	child1 onChildren: [ ^ self ].
	child2 onChildren: [ ^ child4 ].
	
	self shouldnt: [ root children ] raise: WAChildrenNotCollectionError.

	self should: [ child1 children ] 
		raise: WAChildrenNotCollectionError
		description: 'Testing WAPresenter  >> #childrenDo: with #children return ^self'.

	self should: [ child2 children ] 
		raise: WAChildrenNotCollectionError
		description: 'Testing WAPresenter  >> #childrenDo with #children forgetting to return an array:'.