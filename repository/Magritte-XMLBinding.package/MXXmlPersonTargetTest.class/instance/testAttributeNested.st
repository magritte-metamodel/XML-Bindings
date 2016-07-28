testing
testAttributeNested
	| description person node created |

	person := MXTestPersonAttributeNested new
		name: 'Pepe';
		yourself.
	
	description := person magritteDescription.
	node := description toXmlNode: person.
	
	"<name><name name='Pepe'/></name>"
	self assert: ((node elementAt: 'name') attributeAt: 'name') = person name.
	
	created := description fromXmlNode: node.
	self assert: created name = person name.