description
descriptionTargets
	<magritteDescription>
	^ (MAToManyRelationDescription new
		accessor: #targets;
		label: '1:m targets';
		priority: 600)
		reference: MXRelationTarget new magritteDescription;
		xmlElementName: 'elementTargets';
		beXmlExportable;
		yourself