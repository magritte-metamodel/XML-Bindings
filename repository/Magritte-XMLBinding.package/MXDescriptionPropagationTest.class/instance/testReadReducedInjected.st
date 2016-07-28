tests
testReadReducedInjected
	| obj |
	obj := self reducedSimpleDescription bePreserved fromXml: self simpleObjectXml.
	self assert: obj title notNil.
	self assert: obj date notNil.
	self assert: obj abstract isNil