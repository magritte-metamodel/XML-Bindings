*magritte-xmlbinding
fromXml: aString reader: aParser
	"Answer an object being parsed from <code>aNode</code> using <code>aParser</code>."

	| node |
	node :=  (XMLDOMParser parse: aString readStream) root.
	^self fromXmlNode: node reader: aParser