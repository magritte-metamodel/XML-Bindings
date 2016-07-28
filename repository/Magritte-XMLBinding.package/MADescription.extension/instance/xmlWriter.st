*magritte-xmlbinding
xmlWriter
	^self propertyAt: #xmlWriter ifAbsent: [ self class defaultXmlWriter ]