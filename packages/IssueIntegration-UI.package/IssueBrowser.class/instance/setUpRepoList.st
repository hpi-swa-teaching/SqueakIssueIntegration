as yet unclassified
setUpRepoList
	| validPackages |
	self repoPackageDictionary: Dictionary new.
	validPackages := (PackageInfo allPackages select: ([ :package |
		(IssueManagement getIssueManagementFor: package name) hasValidRemote ])).
	validPackages do: [:package | self repoPackageDictionary at: (IssueManagement getIssueManagementFor: package name) projectID asString put: package name].
	^ self repoPackageDictionary keys.