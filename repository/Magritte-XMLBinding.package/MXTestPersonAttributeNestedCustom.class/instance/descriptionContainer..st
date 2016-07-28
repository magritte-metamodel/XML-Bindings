accessing-description
descriptionContainer: aDescription
	<magritteContainer>
	"Why is this method required? See note in MXTestPerson>>#descriptionContainer: "
	^ aDescription
		kind: MXTestPersonAttributeNestedCustom;
		xmlElementName: 'person';
		yourself