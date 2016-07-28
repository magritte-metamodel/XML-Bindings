testing
testContainerElementCustom
	| description person node created |

	person := MXTestPerson new.
	description := person magritteDescription.
	node := description toXmlNode: person.
	
	"<person></person>"
	self assert: node name = 'person'.
	
	created := description fromXmlNode: node.
	self assert: created class = person class