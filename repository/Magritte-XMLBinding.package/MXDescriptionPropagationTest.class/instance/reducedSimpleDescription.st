as yet unclassified
reducedSimpleDescription
	| simpleObject |
	simpleObject := MXSimpleObject new.
	^ (simpleObject descriptionTitle, 
		simpleObject descriptionDate)
			xmlElementName: MXSimpleObject xmlElementName;
			kind: MXSimpleObject 