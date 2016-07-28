as yet unclassified
testMultipleOption

	| person xml created |
	
	person := MXTestPerson new
		name: 'Pete';
		otherHobbies: #( 'Tennis' 'Golf' );
		yourself.
		
	xml := person magritteDescription toXmlNode: person.
	self assert: ((String streamContents: [:s|
		xml writeXMLOn: (XMLWriter on: s)])  includesSubString: '<otherHobbies>Tennis, Golf</otherHobbies>').
	
	created := MXTestPerson new magritteDescription fromXmlNode: xml.
	self assert: (person otherHobbies = created otherHobbies).