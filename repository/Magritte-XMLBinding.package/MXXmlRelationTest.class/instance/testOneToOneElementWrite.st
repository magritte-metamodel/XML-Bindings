testing
testOneToOneElementWrite
	| object xml |
	object := MXOneToOneSource new
		label: 'A label';
		target: (
			MXRelationTarget new
				title: 'A title').
	xml := object toXml.
	"<toOneSource label='A label'><toOne><elementtarget title='A title'/> </toOne></toOneSource>"
	self assert: (xml elementAt: 'toOne') notNil.
	self assert: ((xml elementAt: 'toOne') elementAt: 'elementtarget') notNil