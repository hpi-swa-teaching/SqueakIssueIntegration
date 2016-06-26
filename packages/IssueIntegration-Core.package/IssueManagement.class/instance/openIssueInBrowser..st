issue accessing
openIssueInBrowser: anIssue
	| classAndSeparator |
	classAndSeparator := self extractClassAndSelectorFromIssueTitle: anIssue title.
	self openBrowserFor: (classAndSeparator at: #class) andSelector: (classAndSeparator at: #selector).