accessing
vhostName: nameIndex letter: letterIndex 
	"First get the name component"

	| ni word nStart nEnd li |
	ni := nameIndex asNumber.
	word := ni = 0 
				ifTrue: [self nameString]
				ifFalse: 
					[nStart := ni < 0 ifTrue: [name size + 1 + ni] ifFalse: [ni].
					nEnd := nStart.
					(nameIndex endsWith: '+') ifTrue: [nStart := 1].
					(nStart < 1 or: [nStart > name size]) 
						ifTrue: ['_']
						ifFalse: 
							[String streamContents: 
									[:strm | 
									(nStart to: nEnd) do: [:in | strm nextPutAll: (name at: in)]
										separatedBy: [strm nextPut: $.]]]].

	"Now get the letters"
	li := letterIndex asNumber.
	li = 0 
		ifTrue: [^word]
		ifFalse: 
			[li < 0 
				ifTrue: 
					[nStart := word size + 1 + li.
					nEnd := nStart.
					(letterIndex endsWith: '+') ifTrue: [nStart := 1]]
				ifFalse: 
					[nStart := li.
					nEnd := (letterIndex endsWith: '+') ifTrue: [word size] ifFalse: [nStart]].
			(nStart < 1 or: [nStart > name size]) 
				ifTrue: [^'_']
				ifFalse: [^word copyFrom: nStart to: nEnd]]