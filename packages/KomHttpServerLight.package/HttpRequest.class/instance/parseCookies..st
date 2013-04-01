private
parseCookies: aString 
	"PRIVATE: Parse a string in the format:  
	Cookie: NAME1=OPAQUE_STRING1; NAME2=OPAQUE_STRING2 ..."

	| dict |
	dict := Dictionary new.
	(aString findTokens: ';') do: 
			[:pairStr | 
			| pair |
			pair := pairStr findTokens: '='.
			pair size > 0 
				ifTrue: 
					[| key value |
					key := pair first withBlanksTrimmed asSymbol.
					value := pair size > 1 
						ifTrue:
							[pair second withBlanksTrimmed]
						ifFalse:
							[nil].
					dict at: key put: value]
				ifFalse: 
					["self log: 'Cookie invalid pair format: ''' , pairStr , ''''"

					].
		dict size > self class maxDictionarySize
			ifTrue: [ ^ dict ] ].
	^dict