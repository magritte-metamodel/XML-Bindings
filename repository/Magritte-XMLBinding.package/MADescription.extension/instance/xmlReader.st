*magritte-xmlbinding
xmlReader
	^self propertyAt: #xmlReader ifAbsent: [ self class defaultXmlReader ]