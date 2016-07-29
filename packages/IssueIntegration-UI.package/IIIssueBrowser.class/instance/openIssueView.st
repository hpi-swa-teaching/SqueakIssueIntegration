user interface signals
openIssueView
	| issueView |
	issueView := self window veryDeepCopy.
	self 
		adjustSubMorphsOfIssueView: issueView;
		adjustButtonsOfIssueView: issueView.
	issueView
		extent: 400@250;
		openInHand