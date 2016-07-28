visiting-description
visitToOneRelationDescription: aDescription

	| value referenceDescription |
	value := self object readUsing: aDescription.
	value isNil
		ifTrue: [
			self node: (aDescription xmlTarget addUndefinedTo: self containerNode)]
		ifFalse: [
			self node: (aDescription xmlTarget addNodeTo: self containerNode).
			referenceDescription := aDescription reference ifNil: [ self descriptionFor: value].
			referenceDescription xmlWriter
				write: value description: referenceDescription to: self node ]