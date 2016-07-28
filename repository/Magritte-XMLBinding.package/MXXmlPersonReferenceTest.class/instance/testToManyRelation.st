tests
testToManyRelation

	| person xml created |
	
	person := MXTestPerson new
		name: 'Pete';
		otherAddresses: (OrderedCollection new
			add: (MXTestStreetAddress new
				street: 'Noordeinde';
				city: 'Delft';
				postalCode: '2611KH');
			add: (MXTestStreetAddress new
				street: 'Rubenslaan';
				city: 'Utrecht';
				postalCode: '3582JD');
			yourself).
		
	xml := person magritteDescription toXmlNode: person.
	
	created := MXTestPerson new magritteDescription fromXmlNode: xml.
	
	self assert: (person otherAddresses size = created otherAddresses size).
	self assert: (person otherAddresses last street = created otherAddresses last street).