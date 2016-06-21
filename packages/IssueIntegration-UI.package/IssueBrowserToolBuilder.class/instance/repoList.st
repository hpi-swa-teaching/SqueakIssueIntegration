as yet unclassified
repoList	
	^ PackageInfo allPackages collect: ([ :package |
		(IssueManagement getIssueManagementFor: package name) ]) thenSelect: [ :issueManagement | 
			issueManagement hasValidRemote ]
