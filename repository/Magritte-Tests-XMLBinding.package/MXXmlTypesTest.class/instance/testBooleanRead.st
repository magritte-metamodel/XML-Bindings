testing
testBooleanRead
	| created xmlString |
	xmlString := '<typesobject boolean="true"/> '.
	created := MXTypesObject fromXml: xmlString.
	
	self assert: created boolean = true