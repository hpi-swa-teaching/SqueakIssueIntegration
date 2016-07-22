initialize-release
testSubmitButton
	| issueManagement issueTitle selectedIssues titleInput |
	self assert: (self subject findByName: 'IssueCreator') notNil.
	issueTitle := 'SubmitButtonTest'.
	titleInput := self subject findByName: 'titleInput'.
	titleInput 
		setText: issueTitle;
		acceptTextInModel.
	(self subject findByName: 'submitButton') click.
	self assert: (self subject findByName: 'IssueCreator') owner isNil.
	issueManagement := IIIssueManagement repositoryDictionary at: 'IssueIntegration-Tests'.
	selectedIssues := issueManagement getIssues 
		detect: [ :issue | Transcript show: 'title: ', issue title; cr. issue title includesSubString: issueTitle ]
		ifNone: [ nil ].
	self assert: selectedIssues notNil 