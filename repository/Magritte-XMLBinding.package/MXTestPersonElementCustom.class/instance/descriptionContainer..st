accessing-description
descriptionContainer: aDescription
	<magritteContainer>
	"Why is this method required? See note in MXTestPerson>>#descriptionContainer: "
	^ aDescription
		xmlElementName: 'person';
		kind: MXTestPersonElementCustom;
		yourself