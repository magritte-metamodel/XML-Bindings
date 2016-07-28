testing
testBlockWithNil
	| description person node created |
	
	person := MXTestPersonBlockWithNil new
		name: nil; 
		yourself.
		
	description := person magritteDescription.
	node := description toXmlNode: person.
	
	"<person></person>"
	self assert: (node attributeAt: 'blck2' ifAbsent: [ nil] ) isNil.
	
	created := description fromXmlNode: node.
	self assert: created name isNil