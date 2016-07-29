issue accessing
openIssueInSystemBrowser: anIssue
	| classAndSeparator |
	classAndSeparator := self extractClassAndSelectorFromIssueTitle: anIssue title.
	Browser 
		fullOnClass: (classAndSeparator at: #class) 
		selector: (classAndSeparator at: #selector)