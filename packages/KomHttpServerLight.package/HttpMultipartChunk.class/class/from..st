instance creation
from: aDictionary
	aDictionary isEmptyOrNil
		ifTrue: [^nil].
	^self new initializeFrom: aDictionary