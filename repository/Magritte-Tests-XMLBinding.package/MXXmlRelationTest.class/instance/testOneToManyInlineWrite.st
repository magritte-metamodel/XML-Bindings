testing
testOneToManyInlineWrite
	| object xml |
	object := MXOneToManySource new
		label: 'A label';
		inlineTargets: (
			OrderedCollection new
				add:(MXRelationInlineTarget new
					title: 'title1');
				add:(MXRelationInlineTarget new
					title: 'title2');
				yourself).
	xml := object toXml.
	"<toManySource label='A label'><inlineTarget title='title1'/> <inlineTarget title='title2'/> </toManySource>'"
	self assert: (xml elementsAt: 'inlineTarget') size = 2
