running
testChoosingTestPackage
	self packageList changeModelSelection: (self packageList getList 
		indexOf: 'IssueIntegration-Tests').
	self
		assert: IIGitHubApiMockServer repoSlug
			equals: (self subject findByName: 'projectIdInput') text string;
		assert: IIGitHubApiMockServer repoOwner  
			equals: (self subject findByName: 'usernameInput') text string;
		assert: IIGitHubApiMockServer oAuthToken 
			equals: (self subject findByName: 'loginKeyInput') text string