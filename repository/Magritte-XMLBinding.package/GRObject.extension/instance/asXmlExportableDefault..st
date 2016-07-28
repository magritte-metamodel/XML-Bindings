*magritte-xmlbinding
asXmlExportableDefault: beExportableDefault
	^ self magritteDescription toXmlNode: self parent: XMLDocument new isExportableDefault: beExportableDefault