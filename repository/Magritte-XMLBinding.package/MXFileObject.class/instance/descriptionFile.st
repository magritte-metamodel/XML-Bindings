accessing-description
descriptionFile
	<magritteDescription>
	^ MAFileDescription new
		accessor: #file;
		label: 'File';
		beXmlExportable;
		yourself