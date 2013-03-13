accessing
actions
	^ Dictionary new
		at: '$Domain' put: [ :cookie :value | cookie domain: value ];
		at: '$Path' put: [ :cookie :value | cookie path: value ];
		at: '$Port' put: [ :cookie :value | cookie initializePorts: value ];
		yourself