visiting-description
visitElementDescription: aDescription

	| value text |

	value := self object readUsing: aDescription.
	text := value ifNotNilDo: [ :v | aDescription toString: v ].
	self writeText: text description: aDescription