accessing-description
descriptionAddress
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #address;
		label: 'Address';
		classes: (Array with: MXTestAddress);
		beXmlElement;
		priority: 20;
		yourself