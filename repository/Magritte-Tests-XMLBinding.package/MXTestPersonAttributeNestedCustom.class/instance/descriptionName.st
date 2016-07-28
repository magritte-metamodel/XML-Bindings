accessing-description
descriptionName
	^ super descriptionName
		beXmlChildAttribute;
		xmlElementName: 'a';
		xmlAttributeName: 'b'; 
		yourself