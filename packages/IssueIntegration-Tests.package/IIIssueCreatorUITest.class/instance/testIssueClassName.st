running
testIssueClassName
	| issueClassName |
	issueClassName := 'aClass'.
	self subject model issueClassName: issueClassName.
	self assert: issueClassName equals: self subject model issueClassName