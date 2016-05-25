as yet unclassified
setUpPackageList

	| activePackages |
	activePackages := (PackageInfo allPackages select: [ :package |
		(IssueManagement getIssueManagementFor: package name) hasValidRemote ]) collect: [ :package | 
			package name, ' (', (IssueManagement getIssueManagementFor: package name) projectID, ')' ].

	ui activePackageList addTextList: activePackages