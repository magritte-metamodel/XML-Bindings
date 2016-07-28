*magritte-xmlbinding
xmlReadBlock: aReadBlock writeBlock: aWriteBlock

	| readerAndWriter |
	
	readerAndWriter := MXPluggableXmlAccessor new
		readBlock: aReadBlock;
		writeBlock: aWriteBlock;
		yourself.
		
	self 
		beXmlExportable;
		xmlReader: readerAndWriter;
		xmlWriter: readerAndWriter.