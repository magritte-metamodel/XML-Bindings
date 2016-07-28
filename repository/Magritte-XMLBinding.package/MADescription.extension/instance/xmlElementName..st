*magritte-xmlbinding
xmlElementName: aString
	self beXmlExportable.
	self propertyAt: #xmlTarget 
		ifPresent: [ :target | target elementName: aString ] 
		ifAbsent: [ self xmlTarget: (MXXmlNamedElementTarget new elementName: aString) ].
		
	self isKindDefined ifFalse: [
		| describedObject |
		describedObject := self describedObject.
		self kind: (describedObject isNil
			ifTrue: [ MADescription defaultKind ]
			ifFalse: [ describedObject class ]) ]