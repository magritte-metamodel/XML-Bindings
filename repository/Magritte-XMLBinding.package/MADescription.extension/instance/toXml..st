*magritte-xmlbinding
toXml: anObject
	"Answer a String created from anObject using the receiver as the description."
	
	| xml |
	xml := self toXmlNode: anObject.	
	^String streamContents: [ :stream | xml writeXMLOn: (XMLWriter on: stream)]