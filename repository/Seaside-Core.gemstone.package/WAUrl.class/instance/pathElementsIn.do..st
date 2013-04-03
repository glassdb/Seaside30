private
pathElementsIn: aString do: aOneArgumentBlock
	self
		subStringsIn: aString
		splitBy: $/
		do: aOneArgumentBlock