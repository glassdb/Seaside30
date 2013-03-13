description
continuationClasses
	^ WARenderLoopContinuation allSubclasses asSortedCollection: [ :a :b | a name <= b name ]