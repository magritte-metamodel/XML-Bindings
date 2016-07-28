testing
testAttributeDefault
	| description person node created |
	
	person := MXTestPerson new
		name: 'Pepe';
		yourself.
		
	description := person magritteDescription.
	node := description toXmlNode: person.
	
	"<person name='Pepe'></person>"
	self assert: (node attributeAt: 'name')= person name.
	
	created := description fromXmlNode: node.
	self assert: created name = person name