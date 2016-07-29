running
testSubmitButton
	| issueManagement issueTitle selectedIssues titleInput |
	issueTitle := 'SubmitButtonTest'.
	titleInput := self subject findByName: 'titleInput'.
	titleInput
		setText: issueTitle;
		acceptTextInModel.
	(self subject findByName: 'submitButton') click.
	self assert: (self subject findByName: 'IssueCreator') owner isNil.
	issueManagement := IIIssueManagement repositoryDictionary at: 'IssueIntegration-Tests'.
	selectedIssues := issueManagement getIssues 
		detect: [ :issue | issue title includesSubString: issueTitle ]
		ifNone: [ nil ].
	self assert: selectedIssues notNil 