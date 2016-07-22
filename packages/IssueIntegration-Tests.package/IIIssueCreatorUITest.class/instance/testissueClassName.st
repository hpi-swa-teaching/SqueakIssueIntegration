initialize-release
testissueClassName
	| issueClassName |
	issueClassName := true.
	self subject model issueClassName: issueClassName.
	self assert: issueClassName equals: self subject model issueClassName