testing
testOneToManyRoundtrip
	| object xmlString created |
	object := self onoToMany.
	xmlString := String streamContents: [:stream|
		object writeXMLOn: stream].
	created := MXOneToManySource fromXml: xmlString.
	self assert: object label = created label.
	self assert: created targets notNil.
	self assert: created targets notEmpty.
	self assert: object targets size = created targets size.
	self assert: (self findTitle: 'title1' in: created targets).
	self assert: (self findTitle: 'title2' in: created targets).
	self assert: (self findTitle: 'title3' in: created targets).
	self assert: created inlineTargets notEmpty.
	self assert: (self findTitle: 'inline title1' in: created inlineTargets).
	self assert: (self findTitle: 'inline title2' in: created inlineTargets).
	self assert: (self findTitle: 'inline title3' in: created inlineTargets).
