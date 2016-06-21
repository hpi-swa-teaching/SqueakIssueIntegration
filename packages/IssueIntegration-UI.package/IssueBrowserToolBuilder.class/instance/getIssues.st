as yet unclassified
getIssues 

	| issueManagement |
	issueManagement := IssueManagement getIssueManagementFor: 'IssueIntegration-Core'.
	^ issueManagement getIssues sorted.