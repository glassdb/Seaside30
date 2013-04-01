timestamp
buildTimeStamp: seconds

	^((TimeStamp fromSeconds: seconds) - self timezoneOffset) printHttpFormat