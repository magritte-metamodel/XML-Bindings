testing
testDescriptionConfigurationPropagation
	| object desc xml result |
	object := self simpleObject.
	desc := object magritteDescription collect: [:each| 
		(each label = 'Abstract') 
			ifTrue: [
				each copy
					xmlReadBlock: [:elem| elem attributeAt: 'customAbstract'] 
					writeBlock: [:elem :obj| elem attributeAt: 'customAbstract' put: obj ]]
			ifFalse: [ each ]].
	
	xml := desc toXml: object.
	result := desc fromXml: xml.
	self assert: result abstract = object abstract
	