tests
testMultipleElements
	| rssFeed |
	rssFeed := MXTestSimpleRss fromXml: self rssXML.
	
	self assert: rssFeed link equals: 'http://www.blackbagops.net'.