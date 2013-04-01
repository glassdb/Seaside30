accessing
priority: aNumber

	priority := aNumber.
	process ifNotNil: [process priority: aNumber].