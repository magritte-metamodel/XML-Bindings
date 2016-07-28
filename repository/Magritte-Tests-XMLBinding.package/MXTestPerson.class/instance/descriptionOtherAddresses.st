accessing-description
descriptionOtherAddresses
	<magritteDescription>
	^ MAToManyRelationDescription new
		accessor: #otherAddresses;
		label: 'Other addresses';
		classes: (Array with: MXTestAddress);
		beXmlElement;
		priority: 40;
		yourself