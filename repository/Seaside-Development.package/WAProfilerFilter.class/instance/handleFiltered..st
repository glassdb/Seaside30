processing
handleFiltered: aRequestContext
	| item |
	item := self itemClass request: aRequestContext request copy.
	[ item profile: [ super handleFiltered: aRequestContext ] ]
		ensure: [ items := items copyWith: item ]