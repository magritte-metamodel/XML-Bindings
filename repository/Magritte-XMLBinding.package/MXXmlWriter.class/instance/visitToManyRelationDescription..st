visiting-description
visitToManyRelationDescription: aDescription

	| collection referenceDescription |
	
	collection := self object readUsing: aDescription.
	collection isNil
		ifFalse: [
			self node: (aDescription xmlTarget addNodeTo: self containerNode).
			collection do: [ :each |
				referenceDescription := aDescription isDescribedByReference 
					ifTrue: [ aDescription reference ] 
					ifFalse: [ self descriptionFor: each ].
				referenceDescription xmlWriter
					write: each description: referenceDescription to: self node isExportableDefault: self isExportableDefault ] ].