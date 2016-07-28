accessing-description
descriptionContainer: aDescription
	<magritteContainer>
	"Note: you don't need override to <magritteContainer> to define #kind: and #xmlElementName: if your object is derived from MXObject - see MXSimpleObject
	for the intervals see: MXXmlElementTarget>>#getInstanceFrom:description: and MXXmlClassNameAttributeTarget>>#getInstanceFrom:description"
	^ aDescription
		kind: MXTestPerson;
		xmlElementName: 'person';
		yourself