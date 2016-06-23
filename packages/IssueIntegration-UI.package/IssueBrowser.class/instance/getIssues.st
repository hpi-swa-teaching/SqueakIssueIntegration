as yet unclassified
getIssues 

	| issueManagement |
	issueManagement := IssueManagement getIssueManagementFor: selectedPackage.
	^ issueManagement getIssues sorted.