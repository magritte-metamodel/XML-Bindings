*magritte-xmlbinding
descriptionXmlReader
	<magritteDescription>
	^ MASingleOptionDescription new
		accessor: #xmlReader;
		label: 'XML Reader';
		priority: 1300;
		default: self class defaultXmlReader;
		reference: MAClassDescription new;
		options: (Array with: MXXmlReader);
		yourself