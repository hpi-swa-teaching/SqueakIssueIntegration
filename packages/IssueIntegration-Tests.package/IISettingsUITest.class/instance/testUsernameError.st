running
testUsernameError
	self packageList changeModelSelection: (self packageList getList 
		indexOf: (self packageList getList 
			detect: [ :package | package = 'IssueIntegration-Tests' ])).
	(self subject findByName: 'usernameInput')
		changeText: '';
		acceptTextInModel.
	self should: [ (self subject findByName: 'saveButton') click ] 
		raise: Error 
		description: 'Please insert your username'