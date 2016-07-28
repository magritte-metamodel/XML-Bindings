*magritte-xmlbinding
isXmlExportableDefault: defaultExportable
	^ self propertyAt: #xmlExportable ifAbsent: [ defaultExportable ]