private
addStopSignal

	stopSignal ifNil: [stopSignal := OrderedCollection new].
	^stopSignal add: Semaphore new.