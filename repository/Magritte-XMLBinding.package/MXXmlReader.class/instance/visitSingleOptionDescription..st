visiting-description
visitSingleOptionDescription: aDescription
	"If the option value is a class than just output the class name instead of the label"
	
	aDescription reference kind = Class
		ifTrue: [
			| text |
			text := self readText: aDescription.
			self object: (text isNil 
				ifTrue: [ nil ] 
				ifFalse: [ Smalltalk at: text asSymbol ])]
		ifFalse: [ 
			super visitSingleOptionDescription: aDescription ]