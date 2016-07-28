*magritte-xmlbinding
toXmlNode: anObject
	"Answer a XML Node created from anObject using the receiver as the description."

	^ self toXmlNode: anObject parent: XMLDocument new