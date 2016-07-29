running
testPackageSelection
	self packageList changeModelSelection: (self packageList getList 
		indexOf: (self packageList getList 
			detect: [ :package | package = 'IssueIntegration-Tests' ])).
	self 
		assert: IIGitHubApiMockServer repoSlug 
			equals: (self subject findByName: 'projectIdInput') text asString;
		assert: IIGitHubApiMockServer repoOwner 
			equals: (self subject findByName: 'usernameInput') text asString;
		assert: IIGitHubApiMockServer oAuthToken 
			equals: (self subject findByName: 'loginKeyInput') text asString