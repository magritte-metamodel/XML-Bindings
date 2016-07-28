fixtures
embedObject
	^ MXRelationEmbedSource new
		title: 'A title';
		target: (
			MXRelationEmbedTarget new
				name: 'A name')