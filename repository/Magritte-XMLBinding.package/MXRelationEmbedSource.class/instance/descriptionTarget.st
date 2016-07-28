accessing-description
descriptionTarget
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #target;
		label: '1:1 embed target';
		priority: 600;
		xmlReadBlock: [ :node | MXRelationEmbedTarget new name: (node attributeAt: 'embedTargetName') ]
			writeBlock: [ :node :value | node attributeAt: 'embedTargetName' put: value name ];
		reference: MXRelationEmbedTarget new magritteDescription;
		yourself