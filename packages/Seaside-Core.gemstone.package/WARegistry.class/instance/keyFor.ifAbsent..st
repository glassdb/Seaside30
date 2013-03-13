parent/child
keyFor: aRequestHandler ifAbsent: absentBlock
	^ (self cache keyAtValue: aRequestHandler) ifNil: [ absentBlock value ]