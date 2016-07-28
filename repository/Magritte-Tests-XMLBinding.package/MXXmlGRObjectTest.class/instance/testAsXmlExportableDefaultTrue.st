tests
testAsXmlExportableDefaultTrue
	| person xml |
	
	person := MXTestPersonWithEmail new
		name: 'Pete';
		otherHobbies: #( 'Tennis' 'Golf' );
		email: 'pete@tennisgolf.com'
		yourself.
		
	"note the xml below includes an email xml element even though the email description doesn't have any specific XML attributes defined
	the:
	   person asXmlExportableDefault: true
	the 'true' exports using default attributes.'"	
	xml := (person asXmlExportableDefault: true) greaseString.
	self assert: xml = '<person name="Pete"><email>pete@tennisgolf.com</email><otherHobbies>Tennis</otherHobbies><otherHobbies>Golf</otherHobbies></person>'.