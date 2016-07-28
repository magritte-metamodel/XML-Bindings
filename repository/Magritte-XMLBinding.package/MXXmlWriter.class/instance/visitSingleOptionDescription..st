visiting-description
visitSingleOptionDescription: aDescription
	"If the option value is a class than just output the class name instead of the label"
	
	aDescription reference kind = Class
		ifTrue: [
			self 
				writeText: ((self object readUsing: aDescription) ifNotNilDo: [ :c | c name greaseString ])
				description: aDescription ]
		ifFalse: [ 
			super visitSingleOptionDescription: aDescription ]