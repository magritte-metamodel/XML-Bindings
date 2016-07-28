testing
testElementDefault
	| description person node created |

	person := MXTestPersonElementDefault new
		name: 'Pepe';
		yourself.
	
	description := person magritteDescription.
	node := description toXmlNode: person.
	
	"<person><name>Pepe</name></person>"
	self assert: (node elementAt: 'name') contentString = person name.
	
	created := description fromXmlNode: node.
	self assert: created name = person name.