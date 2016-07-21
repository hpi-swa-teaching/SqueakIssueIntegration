opening
openOnIssue: anIssue inRepo: aRepo withRepoPackageDict: repoPackageDict
	"| issueView |
	issueView := self basicNew.
	issueView
		selectedIssue: anIssue;
		selectedRepo: aRepo;
		repoPackageDictionary: repoPackageDict.
	^ ToolBuilder default open: issueView"