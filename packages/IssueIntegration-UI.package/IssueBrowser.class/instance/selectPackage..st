as yet unclassified
selectPackage: aRepositoryName

	| issueManagement packageName |
	
	packageName := self activePackages at: aRepositoryName.
	issueManagement := IssueManagement getIssueManagementFor: packageName.
	
	ui issueList clear.
	ui issueList addTextList: issueManagement getIssues sorted.