instance creation
dateAndTime: aDateAndTime timezoneString: aString
	self
		greaseDeprecatedApi: 'RRRfc822DateTime class>>#dateAndTime:timezoneString:'
		details: 'use #dateAndTime:timeZoneString: instead.'.
	^ self dateAndTime: aDateAndTime timeZoneString: aString