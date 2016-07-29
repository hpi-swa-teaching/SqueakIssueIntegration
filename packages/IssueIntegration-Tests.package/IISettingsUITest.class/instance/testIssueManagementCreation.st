running
testIssueManagementCreation
	| packageIndex |
	packageIndex := self packageList getList 
		indexOf: (self packageList getList 
			detect: [ :package | package = 'IssueIntegration-Core' ]).
	self assert: ((IIIssueManagement getIssueManagementFor: 
		(self packageList getListItem: packageIndex)) isKindOf: IIEmptyIssueManagement).
	self packageList changeModelSelection: packageIndex.
	
	(self subject findByName: 'projectIdInput') 
		changeText: IIGitHubApiMockServer repoSlug;
		acceptTextInModel.
	(self subject findByName: 'usernameInput')
		changeText: IIGitHubApiMockServer repoOwner;
		acceptTextInModel.
	(self subject findByName: 'loginKeyInput')
		changeText: IIGitHubApiMockServer oAuthToken;
		acceptTextInModel.
	(self subject findByName: 'saveButton') click.
	
	self assert: ((IIIssueManagement getIssueManagementFor: 
		(self packageList getListItem: packageIndex)) isKindOf: IIGitHubIssueManagement).
	self packageList 
		changeModelSelection: 1;
		changeModelSelection: packageIndex.
	
	(self subject findByName: 'saveAndQuitButton') click.
	self assert: self subject owner isNil