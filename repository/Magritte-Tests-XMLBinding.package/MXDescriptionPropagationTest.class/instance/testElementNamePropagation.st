as yet unclassified
testElementNamePropagation
	| object objectDescription target targetDescription xmlString result |
	object := MXOneToOneSource new 
		label: 'one to one source';
		target: (MXRelationTarget new title: 'i am the target').
	objectDescription := object magritteDescription.
	
	targetDescription := objectDescription children detect: [:each| each accessor readSelector = #target].
	targetDescription
		beDescribedByReference;
		beInlined;
		reference: (MXRelationTarget new magritteDescription xmlElementName: 'fooTarget'; kind: MXRelationTarget).
		
	xmlString := objectDescription toXml: object.
	self assert: (XMLDOMParser parseDocumentFrom: xmlString) firstNode firstNode name = 'fooTarget'.
	result := objectDescription fromXml: xmlString.
	self assert: result target notNil.
	self assert: result target title = 'i am the target'