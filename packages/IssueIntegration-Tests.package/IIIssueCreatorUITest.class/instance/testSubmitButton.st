running
testSubmitButton
	| issueManagement issueTitle titleInput |
	issueTitle := 'SubmitButtonTest'.
	titleInput := self subject findByName: 'titleInput'.
	titleInput
		setText: issueTitle;
		acceptTextInModel.
	(self subject findByName: 'submitButton') click.
	self assert: (self subject findByName: 'IssueCreator') owner isNil.
	issueManagement := IIIssueManagement repositoryDictionary at: 'IssueIntegration-Tests'.
	self assert: (issueManagement getIssues 
		anySatisfy: [ :issue | issue title includesSubString: issueTitle ]) 