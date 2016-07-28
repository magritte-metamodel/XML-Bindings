fixtures
onoToOne
	^ MXOneToOneSource new
		label: 'A label';
		target: (
			MXRelationTarget new
				title: 'A title');
		inlineTarget: (
			MXRelationInlineTarget new
				title: 'An inline title')