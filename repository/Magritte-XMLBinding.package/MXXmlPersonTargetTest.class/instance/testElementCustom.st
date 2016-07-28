testing
testElementCustom
	| description person node created |

	person := MXTestPersonElementCustom new
		name: 'Pepe';
		yourself.
	
	description := person magritteDescription.
	node := description toXmlNode: person.
	
	"<person><p-name>Pepe</p-name></person>"
	self assert: (node elementAt: 'p-name') contentString = person name.
	
	created := description fromXmlNode: node.
	self assert: created name = person name.