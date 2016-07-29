running
testCheckLoginKey
	self subject model loginKey: 'invalid-key'.
	self should: [ self subject model validateLoginKey ] 
		raise: Error
		whoseDescriptionIncludes: 'Your Login Key does not have the right access rights.' 
		description: 'checkLoginKey failed'.
	self subject model loginKey: IIGitHubApiMockServer oAuthToken.
	self shouldnt: [ self subject model validateLoginKey ] 
		raise: Error