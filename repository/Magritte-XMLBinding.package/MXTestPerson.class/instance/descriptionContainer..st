accessing-description
descriptionContainer: aDescription
	<magritteContainer>
	"Note: rather than overridding <magritteContainer> to define #xmlElementName: an alternative is to derive
	your object from MXObject and override MXSimpleObject class>>xmlElementName
	see: MXXmlElementTarget>>#getInstanceFrom:description: and MXXmlClassNameAttributeTarget>>#getInstanceFrom:description"
	^ aDescription
		xmlElementName: 'person';
		yourself