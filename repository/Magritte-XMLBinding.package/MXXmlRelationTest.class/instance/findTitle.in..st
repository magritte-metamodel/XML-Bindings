helpers
findTitle: aString in: aCollection
	^ (aCollection 
		detect: [:each| each title = aString]
		ifNone: [ nil ]) notNil