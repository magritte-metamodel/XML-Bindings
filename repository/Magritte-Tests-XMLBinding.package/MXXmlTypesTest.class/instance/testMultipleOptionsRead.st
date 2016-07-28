testing
testMultipleOptionsRead

	| created xmlString |

	xmlString := '<typesobject><colors>yellow</colors><colors>green</colors></typesobject>'.
	created := MXTypesObject fromXml: xmlString.

	self assert: (created colors at: 1)  = 'yellow'.
	self assert: (created colors at: 2)  = 'green'.