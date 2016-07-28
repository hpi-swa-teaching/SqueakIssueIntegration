user interface signals
openIssueView
	| issueView |
	issueView := self window veryDeepCopy.
	self adjustSubMorphsOfIssueView: issueView.
	self adjustButtonsOfIssueView: issueView.
	issueView extent: 400 @ 250.
	issueView openInHand