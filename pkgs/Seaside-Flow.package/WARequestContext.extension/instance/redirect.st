*seaside-flow
redirect
	^ self respondAndContinue: [ :url | self redirectTo: url ]