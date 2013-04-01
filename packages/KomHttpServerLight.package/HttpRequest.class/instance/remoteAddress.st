accessing
remoteAddress
	^self
		propertyAt: #remoteAddress
		ifAbsentPut:
			[[stream socket remoteAddress]
				on: MessageNotUnderstood
				do: [:exc | nil]]