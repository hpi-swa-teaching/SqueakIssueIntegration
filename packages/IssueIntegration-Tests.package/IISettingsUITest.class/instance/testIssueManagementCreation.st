as yet unclassified
testIssueManagementCreation
	| projectIdInput usernameInput loginKeyInput packageIndex saveButton |
	packageIndex := self packageList getList 
		indexOf: (self packageList getList 
			detect: [ :package | package = 'IssueIntegration-Tests' ]).
	self packageList changeModelSelection: packageIndex .
	projectIdInput := self subject findByName: 'projectIdInput'.
	usernameInput := self subject findByName: 'usernameInput'.
	loginKeyInput := self subject findByName: 'loginKeyInput'.
	saveButton := self subject findByName: 'saveButton'.
	projectIdInput 
		changeText: IIGitHubApiMock repoSlug;
		acceptTextInModel.
	usernameInput 
		changeText: IIGitHubApiMock repoOwner;
		acceptTextInModel.
	"loginKeyInput 
		changeText: 'i-am-not-a-key';
		acceptTextInModel.
	saveButton click.
	self assert: (IIIssueManagement getIssueManagementFor: (self packageList getListItem: packageIndex)) notEmpty.
	self packageList changeModelSelection: 1.
	self packageList changeModelSelection: packageIndex"