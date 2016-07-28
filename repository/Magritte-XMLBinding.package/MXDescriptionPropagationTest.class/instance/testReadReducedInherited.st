as yet unclassified
testReadReducedInherited
	| obj |
	obj := self reducedSimpleDescription fromXml: self simpleObjectXml.
	self assert: obj title notNil.
	self assert: obj date notNil.
	self assert: obj abstract notNil