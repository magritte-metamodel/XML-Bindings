acessing-magritte
descriptionStreet
	<magritteDescription>
	^ MANumberDescription new
		accessor: #pobox;
		label: 'PO Box';
		beInteger;
		beXmlElement;
		priority: 10;
		yourself