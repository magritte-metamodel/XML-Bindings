visiting-description
visitContainer: aDescription
	"Write out all the elements of object that are xml exportable
	and are notNil."
	
	self node: (aDescription xmlTarget addNodeForInstance: self object to: self containerNode).
	
	(aDescription children select: [ :each | each isXmlExportableDefault: self isExportableDefault ]) do: [ :each |
		each xmlWriter 
			write: self object description: each to: self node isExportableDefault: self isExportableDefault ]