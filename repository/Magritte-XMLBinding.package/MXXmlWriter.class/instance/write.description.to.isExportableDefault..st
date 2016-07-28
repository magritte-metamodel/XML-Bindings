public
write: anObject description: aDescription to: aNode isExportableDefault: aIsExportableDefault

	self 
		containerNode: aNode;
		object: anObject;
		isExportableDefault: aIsExportableDefault;
		visit: aDescription.
	^self node