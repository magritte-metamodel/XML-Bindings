*magritte-xmlbinding
toXmlDocument: anObject
	"Answer a XML Document created from anObject using the receiver as the description."

	^ (self toXmlNode: anObject) document