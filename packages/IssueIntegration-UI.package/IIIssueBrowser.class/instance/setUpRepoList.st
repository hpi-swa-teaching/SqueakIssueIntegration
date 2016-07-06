as yet unclassified
setUpRepoList
	| validPackages |
	self repoPackageDictionary: Dictionary new.
	validPackages := (PackageInfo allPackages select: [ :package |
		(IIIssueManagement getIssueManagementFor: package name) hasValidRemote ]).
	validPackages do: [ :package | self repoPackageDictionary at: (IIIssueManagement getIssueManagementFor: package name) projectID asString put: package name ].
	^ self repoPackageDictionary keys