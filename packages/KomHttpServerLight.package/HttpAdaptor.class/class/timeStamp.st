timestamp
timeStamp

	| seconds |
	seconds := Time totalSeconds.
	^seconds ~= LastTimeStampTime
		ifTrue: 
			[LastTimeStamp := self buildTimeStamp: (LastTimeStampTime := seconds)]
		ifFalse: 
			[LastTimeStamp]