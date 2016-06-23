as yet unclassified
getIssues 

	| issueManagement |
	issueManagement := IssueManagement getIssueManagementFor: (self repoPackageDictionary 
		at: selectedRepo 
		ifAbsent: [^ OrderedCollection new.]).
	^ issueManagement getIssues sorted.