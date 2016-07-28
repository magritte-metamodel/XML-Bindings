testing
testSingleOptionRead

	| created xmlString |

	xmlString := '<typesobject magnitudeClass="Integer"/> '.
	created := MXTypesObject fromXml: xmlString.
	
	self assert: created magnitudeClass = Integer