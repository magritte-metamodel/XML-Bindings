testing
testOneToOneInlineWrite
	| object xml |
	object := MXOneToOneSource new
		label: 'A label';
		inlineTarget: (
			MXRelationInlineTarget new
				title: 'A title').
	xml := object toXml.
	
	"<toOneSource label='A label'><inlineTarget title='A title'/> </toOneSource>"
	self assert: (xml elementAt: 'inlineTarget') notNil.
	self assert: (xml elementAt: 'inlineTarget') hasElements not.
	self assert: ((xml elementAt: 'inlineTarget') attributeAt: 'title') = 'A title'
	