*magritte-xmlbinding
isXmlExportable
	^ self propertyAt: #xmlExportable ifAbsent: [ self class defaultIsExportable ]