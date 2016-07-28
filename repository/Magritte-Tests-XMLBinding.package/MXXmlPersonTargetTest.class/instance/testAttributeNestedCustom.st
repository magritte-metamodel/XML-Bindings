testing
testAttributeNestedCustom
	| description person node created |
	
	person := MXTestPersonAttributeNestedCustom new
		name: 'Pepe';
		yourself.

	description := person magritteDescription.
	node := description toXmlNode: person.
	
	"<person><a b='Pepe'/></person>"
	self assert: ((node elementAt: 'a') attributeAt: 'b') = person name.
	
	created := description fromXmlNode: node.
	self assert: created name = person name.