description
descriptionInlineTargets
	<magritteDescription>
	^ (MAToManyRelationDescription new
		accessor: #inlineTargets;
		label: '1:m inline targets';
		priority: 600)
		reference: MXRelationInlineTarget new magritteDescription;
		beXmlInlineElement;
		yourself