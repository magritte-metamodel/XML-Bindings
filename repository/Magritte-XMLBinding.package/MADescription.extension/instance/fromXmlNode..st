*magritte-xmlbinding
fromXmlNode: aNode 
	"Answer an object being parsed from <code>aNode</code>."

	^self fromXmlNode: aNode reader: self xmlReader