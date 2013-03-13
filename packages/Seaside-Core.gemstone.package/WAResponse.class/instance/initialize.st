initialization
initialize
	super initialize.
	status := 200.
	message := 'OK'.
	headers := WAHeaderFields new.
	cookies := OrderedCollection new