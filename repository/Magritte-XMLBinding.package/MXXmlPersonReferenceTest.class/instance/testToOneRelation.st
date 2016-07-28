as yet unclassified
testToOneRelation

	| person xml created |
	
	person := MXTestPerson new
		name: 'Pete';
		address: (MXTestStreetAddress new
			street: 'Noordeinde';
			city: 'Delft';
			postalCode: '2611KH';
			yourself);
		yourself.
		
	xml := person magritteDescription toXmlNode: person.
	
	created := MXTestPerson new magritteDescription fromXmlNode: xml.
	
	self assert: (person name = created name).
	self assert: (person address class = created address class).
	self assert: (person address postalCode = created address postalCode)