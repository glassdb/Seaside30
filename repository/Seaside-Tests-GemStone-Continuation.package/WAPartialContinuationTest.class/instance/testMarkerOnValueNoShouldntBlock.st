testing
testMarkerOnValueNoShouldntBlock
	| kk captured seen result |
	captured := false.
	seen := false.
	self markDiscardingResultOf: [ | value |
		value := self callcc: [ :cc | kk := cc. captured := true ].
		seen := true.
		value ].
	self assert: captured.
	self assert: seen.
	captured := false.
	seen := false.
	"Make sure the marker method is not included in the continuation and the continuation returns directly
	into the marker method."
	self assert: (result := self mark: [ kk value: 123. 456 ]) = 123.
	self deny: captured.
	 ((System stoneVersionAt: 'gsVersion') beginsWith: '3.') 
		ifTrue: [
			"Gs64 v3.0 deviation, was self assert: seen, but home context VC not unified after installing the partial continuation"
			self deny: seen ]
		ifFalse: [  self assert: seen ]
