public
put: aVersionInfo
	| id |
	id := aVersionInfo id.
	(seen includesKey: id)
		ifTrue: [
			| duplicatesForId |
			duplicatesForId := duplicates at: id ifAbsent: [ nil ].
			duplicatesForId isNil ifTrue: [
				| oldValue |
				oldValue := seen at: id.
				"we can get the same ancestor via different paths"
				oldValue name = aVersionInfo name ifFalse: [
					duplicatesForId := self uuidSet.
					duplicates at: id put: duplicatesForId.
					duplicatesForId add: (seen at: id)].
				 ].
			duplicatesForId isNil ifFalse: [
				duplicatesForId add: aVersionInfo ] ]
		ifFalse: [
			seen at: id put: aVersionInfo ]