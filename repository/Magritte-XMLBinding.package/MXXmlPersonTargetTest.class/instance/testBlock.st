testing
testBlock
	| description person node created |
	
	person := MXTestPersonBlock new 
		name: 'Pepe'; 
		yourself.
		
	description := person magritteDescription.
	node := description toXmlNode: person.
	
	"<person blck='Pepe'></person>"
	self assert: (node attributeAt: 'blck') = person name.
	
	created := description fromXmlNode: node.
	self assert: created name = person name