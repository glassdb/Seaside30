accessing
statusSymbolFor: aCode

	^StatusSymbols at: aCode asNumber ifAbsent: [#serverError]
