as yet unclassified
testIssueManagementCreation
	| projectIdInput usernameInput loginKeyInput packageIndex saveButton saveAndQuitButton |
	packageIndex := self packageList getList 
		indexOf: (self packageList getList 
			detect: [ :package | package = 'IssueIntegration-Core' ]).
	self assert: ((IIIssueManagement getIssueManagementFor: (self packageList getListItem: packageIndex)) isKindOf: IIEmptyIssueManagement).
	self packageList changeModelSelection: packageIndex .
	projectIdInput := self subject findByName: 'projectIdInput'.
	usernameInput := self subject findByName: 'usernameInput'.
	loginKeyInput := self subject findByName: 'loginKeyInput'.
	saveButton := self subject findByName: 'saveButton'.
	saveAndQuitButton := self subject findByName: 'saveAndQuitButton'.
	projectIdInput 
		changeText: IIGitHubApiMockServer repoSlug;
		acceptTextInModel.
	usernameInput 
		changeText: IIGitHubApiMockServer repoOwner;
		acceptTextInModel.
	loginKeyInput 
		changeText: IIGitHubApiMockServer oAuthToken;
		acceptTextInModel.
	saveButton click.
	self assert: ((IIIssueManagement getIssueManagementFor: (self packageList getListItem: packageIndex)) isKindOf: IIGitHubIssueManagement).
	self packageList changeModelSelection: 1.
	self packageList changeModelSelection: packageIndex.
	saveAndQuitButton click.
	self assert: subject owner isNil