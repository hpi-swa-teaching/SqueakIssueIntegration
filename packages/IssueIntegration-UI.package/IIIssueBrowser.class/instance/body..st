issue accessing
body: aText
	self selectedIssue: (self selectedRepo editIssue: self selectedIssue body: aText).
	self changed: #body