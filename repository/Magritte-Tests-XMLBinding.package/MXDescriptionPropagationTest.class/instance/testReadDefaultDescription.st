tests
testReadDefaultDescription
	| obj |
	obj := self simpleObject magritteDescription fromXml: self simpleObjectXml.
	self assert: obj title notNil.
	self assert: obj date notNil.
	self assert: obj abstract notNil