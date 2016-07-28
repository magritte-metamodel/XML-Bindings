*magritte-xmlbinding
xmlElementName: aString

	self beXmlExportable.
	self propertyAt: #xmlTarget ifAbsent: [
		self xmlTarget: (MXXmlNamedElementTarget new elementName: aString).
		^self ].
	self xmlTarget elementName: aString