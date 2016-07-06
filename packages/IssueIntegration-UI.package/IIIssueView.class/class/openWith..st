opening
openWith: anIssue
	| issueView |
	issueView := self basicNew.
	issueView selectedIssue: anIssue.
		
	^ ToolBuilder default open: issueView