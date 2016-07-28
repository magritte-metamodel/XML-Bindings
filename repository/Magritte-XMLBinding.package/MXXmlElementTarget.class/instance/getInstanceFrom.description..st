reading
getInstanceFrom: anElement description: aDescription
	"Answer an instance of the correct class for ==anElement==."
	aDescription kind = Object
		ifTrue: [ 
			"assume a subclass of MXObject"
			^ MXObject forElementNamed: anElement name notFound: [ nil ] ]
		ifFalse: [ 
			aDescription kind withAllSubclassesDo: [ :class |
				| element |
				element := class new.
				element magritteDescription xmlElementName = anElement name
					ifTrue: [ ^ element] ].
			"if the description has been altered through reference than the object class
			is the one specified in kind"
			^ aDescription kind new  ].
	^ nil