accessing-description
descriptionOtherHobbies
	<magritteDescription>
	^ MAMultipleOptionDescription new
		accessor: #otherHobbies;
		label: 'Other hobbies';
		options: self class allHobbies;
		beXmlElement;
		priority: 50;
		yourself