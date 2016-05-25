as yet unclassified
selectPackage: aPackageName

	| issueManagement |
	issueManagement := IssueManagement getIssueManagementFor: (aPackageName asString subStrings: ' ') first.
	
	ui issueList clear.
	ui issueList addTextList: issueManagement getIssues sorted.