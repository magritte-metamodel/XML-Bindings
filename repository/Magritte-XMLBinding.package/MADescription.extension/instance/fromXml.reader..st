*magritte-xmlbinding
fromXml: aString reader: aParser
	"Answer an object being parsed from <code>aNode</code> using <code>aParser</code>."

	| node |
	node :=  (XMLDOMParser parseDocumentFrom: aString readStream) root.
	^self fromXmlNode: node reader: aParser