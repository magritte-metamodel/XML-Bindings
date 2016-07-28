*magritte-xmlbinding
xmlAttributeName: aString

	self beXmlExportable.
	self propertyAt: #xmlTarget ifAbsent: [
		self xmlTarget: (MXXmlAttributeTarget new attributeName: aString).
		^self ].
	self xmlTarget attributeName: aString