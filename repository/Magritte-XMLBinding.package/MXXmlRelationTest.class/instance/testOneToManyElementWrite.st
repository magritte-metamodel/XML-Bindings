testing
testOneToManyElementWrite
	| object xml |
	object := MXOneToManySource new
		label: 'A label';
		targets: (
			OrderedCollection new
				add:(MXRelationTarget new
					title: 'title1');
				add:(MXRelationTarget new
					title: 'title2');
				yourself).
	xml := object toXml.
	"<toManySource label='A label'><elementTargets><elementtarget title='title1'/> <elementtarget title='title2'/></elementTargets></toManySource>"
	self assert: (xml elementAt: 'elementTargets') notNil.
	self assert: ((xml elementAt: 'elementTargets') elementsAt: 'elementtarget') size = 2