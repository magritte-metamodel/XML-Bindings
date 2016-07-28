description
descriptionName
	<magritteDescription>
	^ MAStringDescription new
		accessor: #name;
		priority: 100;
		label: 'Name';
		beXmlAttribute;
		yourself