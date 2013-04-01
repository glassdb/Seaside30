parsing
addKey: key value: value toForm: dict multipleValues: boolean
	boolean
		ifTrue: [ dict at: key put: value ]
		ifFalse: [ 
			(dict includesKey: key)
				ifFalse: [ dict at: key put: value ]
				ifTrue: [ dict at: key put: (dict at: key) , value ] ]