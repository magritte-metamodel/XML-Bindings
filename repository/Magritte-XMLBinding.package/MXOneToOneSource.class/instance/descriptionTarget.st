description
descriptionTarget
	<magritteDescription>
	^ (MAToOneRelationDescription new
		accessor: #target;
		label: '1:1 target';
		priority: 600)
		xmlElementName: 'toOne';
		reference: MXRelationTarget new magritteDescription;
		beXmlExportable;
		yourself