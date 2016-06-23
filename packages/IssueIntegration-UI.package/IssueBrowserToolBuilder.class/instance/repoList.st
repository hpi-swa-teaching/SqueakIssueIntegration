as yet unclassified
repoList	
	"REFACTOR!!!"
	| list |
	list := ((PackageInfo allPackages collect: ([ :package |
		(IssueManagement getIssueManagementFor: package name) ]) thenSelect: [ :issueManagement | 
			issueManagement hasValidRemote ]) collect: [:issueManagement | issueManagement projectID]).
	^ list
		