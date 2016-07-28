testing
testContainerElementWithTypeAttribute
	| description person node created |
	
	person := MXTestPersonContainerElementWithTypeAttribute new.
	
	description := person magritteDescription.
	node := description toXmlNode: person.
	
	"<person strclass='MXTestPersonContainerElementWithTypeAttribute></person>"
	self assert: node name = 'person'.
	self assert: (node attributeAt: 'stclass') = #MXTestPersonContainerElementWithTypeAttribute.
	
	created := description fromXmlNode: node.
	self assert: created class = person class