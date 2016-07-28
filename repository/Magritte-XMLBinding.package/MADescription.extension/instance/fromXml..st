*magritte-xmlbinding
fromXml: aString
	"Answer an object being parsed from <code>aString</code>."

	^ self fromXml: aString reader: self xmlReader