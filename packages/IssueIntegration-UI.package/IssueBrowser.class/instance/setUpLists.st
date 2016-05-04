as yet unclassified
setUpLists

	| issueManagement |
	issueManagement := IssueManagement getIssueManagementFor: 'IssueIntegration-Core'.
	issueManagement getIssues do: [ :ea | ui issueList addText: ea ].