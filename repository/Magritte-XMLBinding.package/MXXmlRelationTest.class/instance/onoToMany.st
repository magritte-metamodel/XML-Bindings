fixtures
onoToMany
	^ MXOneToManySource new
		label: 'A label';
		targets: (
			OrderedCollection new
				add:(MXRelationTarget new
					title: 'title1');
				add:(MXRelationTarget new
					title: 'title2');
				add:(MXRelationTarget new
					title: 'title3');
				yourself
			);
		inlineTargets: (
			OrderedCollection new
				add:(MXRelationInlineTarget new
					title: 'inline title1');
				add:(MXRelationInlineTarget new
					title: 'inline title2');
				add:(MXRelationInlineTarget new
					title: 'inline title3');
				yourself
			)