issue accessing
body: aText
	self selectedIssue: (self selectedRepo editIssue: self selectedIssue body: self body).
	self changed: #body