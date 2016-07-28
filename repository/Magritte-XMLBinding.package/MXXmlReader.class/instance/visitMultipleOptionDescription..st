visiting-description
visitMultipleOptionDescription: aDescription
	| resultCollection |

	resultCollection := self readCollectionText: aDescription.
	self object: resultCollection