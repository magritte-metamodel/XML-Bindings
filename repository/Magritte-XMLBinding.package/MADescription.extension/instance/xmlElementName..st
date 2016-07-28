*magritte-xmlbinding
xmlElementName: aString
	self beXmlExportable.
	self propertyAt: #xmlTarget 
		ifPresent: [ :target | target elementName: aString ] 
		ifAbsent: [ self xmlTarget: (MXXmlNamedElementTarget new elementName: aString) ].
	self propertyAt: #kind ifAbsentPut: [ self describedObject class ]