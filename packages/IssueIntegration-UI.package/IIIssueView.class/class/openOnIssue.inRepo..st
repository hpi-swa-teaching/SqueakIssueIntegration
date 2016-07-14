opening
openOnIssue: anIssue inRepo: aRepo
	| issueView |
	issueView := self basicNew.
	issueView selectedIssue: anIssue.
	issueView selectedRepo: aRepo.
	^ ToolBuilder default open: issueView