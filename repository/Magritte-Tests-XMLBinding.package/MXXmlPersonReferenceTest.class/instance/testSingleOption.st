tests
testSingleOption

	| person xml created |
	
	person := MXTestPerson new
		name: 'Pete';
		favouriteHobby: 'Tennis';
		yourself.
		
	xml := person magritteDescription toXmlNode: person.
	
	created := MXTestPerson new magritteDescription fromXmlNode: xml.
	
	self assert: (person favouriteHobby = created favouriteHobby).