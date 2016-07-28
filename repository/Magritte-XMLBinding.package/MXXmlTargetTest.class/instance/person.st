accessing
person

	^person ifNil: [
		person := MXTestPerson new
			name: 'Pete']