as yet unclassified
testCheckLoginKey
	self should: [ self subject model checkLoginKey: 'blaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaah' ] raise: Error
		whoseDescriptionIncludes: 'Your Login Key does not have the right access rights.' description: 'checkLoginKey failed'.
	self shouldnt: [ self subject model checkLoginKey: 'i-am-not-a-key' ] raise: Error