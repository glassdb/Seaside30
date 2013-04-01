initialization
initialize
	"self initialize"

	Services := Set new.
	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self