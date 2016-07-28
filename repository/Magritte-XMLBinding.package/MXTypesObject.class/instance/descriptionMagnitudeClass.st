description
descriptionMagnitudeClass
	<magritteDescription>
	^ MASingleOptionDescription new
		options: Magnitude allSubclasses;
		reference: MAClassDescription new;
		accessor: #magnitudeClass;
		beXmlAttribute;
		yourself