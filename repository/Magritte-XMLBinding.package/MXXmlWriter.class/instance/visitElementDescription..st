visiting-description
visitElementDescription: aDescription
	| value text |
	value := self object readUsing: aDescription.
	text := value ifNotNil: [ :v | aDescription toString: v ].
	self writeText: text description: aDescription