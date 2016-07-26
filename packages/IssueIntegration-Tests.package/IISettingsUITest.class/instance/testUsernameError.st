running
testUsernameError
	| projectIdInput usernameInput saveButton |
	self packageList changeModelSelection: (self packageList getList 
		indexOf: (self packageList getList 
			detect: [ :package | package = 'IssueIntegration-Tests' ])).
	projectIdInput := self subject findByName: 'projectIdInput'.
	usernameInput := self subject findByName: 'usernameInput'.
	saveButton := self subject findByName: 'saveButton'.
	usernameInput changeText: ''.
	usernameInput acceptTextInModel.
	self should: [saveButton click] raise: Error description: 'Please insert your username'