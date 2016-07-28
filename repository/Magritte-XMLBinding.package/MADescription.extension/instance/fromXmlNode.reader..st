*magritte-xmlbinding
fromXmlNode: aNode reader: aXmlReader
	"Answer an object being parsed from <code>aNode</code> using <code>aXmlReader</code>."

	^aXmlReader read: aNode description: self