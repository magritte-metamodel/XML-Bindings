visiting-description
visitMultipleOptionDescription: aDescription
	| options text |

	options := self object readUsing: aDescription.
	options notNil ifTrue: [
		options do: [ :each | self writeText: each description: aDescription ] ]
