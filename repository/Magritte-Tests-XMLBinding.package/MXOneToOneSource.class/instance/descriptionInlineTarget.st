description
descriptionInlineTarget
	<magritteDescription>
	^ (MAToOneRelationDescription new
		accessor: #inlineTarget;
		label: '1:1 inline target';
		priority: 600)
		beXmlInlineElement;
		reference: MXRelationInlineTarget new magritteDescription;
		yourself