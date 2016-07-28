*magritte-xmlbinding
xmlElementName: aString
	self beXmlExportable.
	self propertyAt: #xmlTarget 
		ifPresent: [ :target | target elementName: aString ] 
		ifAbsent: [ self xmlTarget: (MXXmlNamedElementTarget new elementName: aString) ].
	self propertyAt: #kind ifAbsentPut: [ 
		| describedObject |
		describedObject := self describedObject.
		describedObject isNil
			ifTrue: [ MADescription defaultKind ]
			ifFalse: [ describedObject class ] ]