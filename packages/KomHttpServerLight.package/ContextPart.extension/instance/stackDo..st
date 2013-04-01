*komhttpserverlight
stackDo: aBlock
	"Iterates the sender chain, evaluating aBlock for each context"

	| thisCtx |
	thisCtx := self.
	[thisCtx notNil] whileTrue:
		[aBlock value: thisCtx.
		thisCtx := thisCtx sender]
