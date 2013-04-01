utility
sleepFor: milliseconds
	"If your service sleeps, use this method as it will indicate that it is
	safe to immediately terminate the process while it is sleeping."

	Process terminationOkDuring:
		[(Delay forMilliseconds: milliseconds) wait].
