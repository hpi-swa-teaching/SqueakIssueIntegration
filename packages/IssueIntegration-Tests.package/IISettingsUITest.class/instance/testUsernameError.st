running
testUsernameError
	| usernameInput saveButton |
	self packageList changeModelSelection: (self packageList getList 
		indexOf: (self packageList getList 
			detect: [ :package | package = 'IssueIntegration-Tests' ])).
	usernameInput := self subject findByName: 'usernameInput'.
	saveButton := self subject findByName: 'saveButton'.
	usernameInput 
		changeText: '';
		acceptTextInModel.
	self should: [saveButton click] raise: Error description: 'Please insert your username'