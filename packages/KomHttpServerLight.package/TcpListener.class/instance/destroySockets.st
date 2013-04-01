initialization
destroySockets
	socketsToDestroy notNil
		ifTrue: [ socketsToDestroy do: [ :ea | ea destroy ] ].
	socketsToDestroy := OrderedCollection new