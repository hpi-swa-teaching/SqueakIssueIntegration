as yet unclassified
repoList	
	"REFACTOR!!!"
	| list |
	
	list := PackageInfo allPackages select: [ :package |
		((IssueManagement getIssueManagementFor: package name) asString = 'an EmptyIssueManagement') not] thenCollect: [:package | package packageName].
	"list := ((PackageInfo allPackages collect: ([ :package |
		(IssueManagement getIssueManagementFor: package name) ]) thenSelect: [ :issueManagement | 
			issueManagement hasValidRemote ]) collect: [:issueManagement | issueManagement projectID])."
	^ list
		