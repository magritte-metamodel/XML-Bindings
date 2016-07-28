tests
testWriteReducedDescription
	| doc |
	doc := self reducedSimpleDescription toXmlDocument: self simpleObject.
	self assert: doc firstElement elements size = 1.
	self assert: doc firstElement attributes size = 1.