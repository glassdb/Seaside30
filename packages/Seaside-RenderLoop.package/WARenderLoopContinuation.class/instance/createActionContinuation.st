private
createActionContinuation
	"Answer a new action phase continuation."

	^ (self application preferenceAt: #actionPhaseContinuationClass) new
			setStates: self states;
			yourself