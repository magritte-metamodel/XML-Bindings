tests
testAsXmlExportableDefaultFalse

	| person xml created |
	
	person := MXTestPersonWithEmail new
		name: 'Pete';
		otherHobbies: #( 'Tennis' 'Golf' );
		email: 'pete@tennisgolf.com'
		yourself.
		
	xml := (person asXmlExportableDefault: false) greaseString.
	
	self assert: xml = '<person name="Pete"><otherHobbies>Tennis, Golf</otherHobbies></person>'.