testing
testAttributeCustom
	| description person node created |

	person := MXTestPersonAttributeCustom new
		name: 'Pepe';
		yourself.
	
	description := person magritteDescription.
	node := description toXmlNode: person.
	
	"<person p-name='Pepe'></person>"
	self assert: (node attributeAt: 'p-name') = person name.
	
	created := description fromXmlNode: node.
	self assert: created name = person name.