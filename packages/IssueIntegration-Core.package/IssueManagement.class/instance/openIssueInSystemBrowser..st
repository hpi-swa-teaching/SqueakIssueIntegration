issue accessing
openIssueInSystemBrowser: anIssue
	| classAndSeparator |
	classAndSeparator := self extractClassAndSelectorFromIssueTitle: anIssue title.
	self openSystemBrowserFor: (classAndSeparator at: #class) andSelector: (classAndSeparator at: #selector).